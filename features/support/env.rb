require 'rspec'
require 'page-object'
require 'data_magic'
require 'selenium-webdriver'
require 'yaml'
require 'test/unit/assertions'
include Test::Unit::Assertions
World(PageObject::PageFactory)

# $config = YAML.load_file 'config/config.yml'
# case ENV['browser']
#   when 'chrome'
#     Selenium::WebDriver::Chrome.driver_path = 'drivers/chromedriver.exe'
#     $browser = Selenium::WebDriver.for :chrome
#   when 'firefox'
#     Selenium::WebDriver::Firefox.driver_path = 'drivers/geckodriver.exe'
#     $browser = Selenium::WebDriver.for :firefox
#   when 'ie'
#     Selenium::WebDriver::IE.driver_path = 'drivers/IEDriverServer.exe'
#     $browser = Selenium::WebDriver.for :ie
#   else
#     Selenium::WebDriver::Chrome.driver_path = 'drivers/chromedriver.exe'
#     $browser = Selenium::WebDriver.for :chrome
# end
# $browser.manage.window.maximize
#
# require 'require_all'
# require_all 'pages'
