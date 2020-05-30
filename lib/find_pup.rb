require_relative "./find_pup/version"
require_relative "./find_pup/cli"
require_relative "./find_pup/scraper"
require_relative "./find_pup/dog"

require 'pry'
require 'nokogiri'
require 'open-uri'

module FindPup
  class Error < StandardError; end
  # Your code goes here...
end
