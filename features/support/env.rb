require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'capybara/rspec'


Capybara.default_driver = :selenium_chrome # or :selenium for Firefox
Capybara.app_host = 'https://pauliceia.unifesp.br/portal' # Replace with your app URL
