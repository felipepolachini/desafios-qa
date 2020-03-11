require 'capybara/cucumber'
require 'selenium-webdriver'
require 'yaml'
require 'site_prism'
require 'rspec'
require_relative 'page_object.rb'

CONFIG = YAML.load_file("#{Dir.pwd}/config/config.yml")
  
World(PageObjects)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG['URL']
  config.default_max_wait_time = 5
end