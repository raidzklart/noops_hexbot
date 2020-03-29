require "./lib/noops_hexbot/version.rb"
require "httparty"

module NoopsHexbot
  class Error < StandardError; end
  class Client
    include HTTParty
    def initialize
      @base_uri = "https://api.noopschallenge.com"
    end

    def colour
      parse_response(HTTParty.get "#{@base_uri}/hexbot").first
    end

    def color
      colour
    end

    def colours(count)
      check_count(count)
      parse_response(HTTParty.get "#{@base_uri}/hexbot?count=#{count}").each { |i| i["value"] }
    end

    def colors(count)
      colours(count)
    end

    def colours_with_seeds(count, seeds)
      check_count(count)
      parse_response(HTTParty.get "#{@base_uri}/hexbot?count=#{count}&seed=#{seeds.join(',')}").each { |i| i["value"] }
    end

    def colors_with_seeds(count, seeds)
      colours_with_seeds(count, seeds)
    end

    private
    def parse_response(response)
      response.parsed_response["colors"]
    end
    def check_count(count)
      raise "Count must be between 1 and 1000" if count > 1001
    end
  end
end