require 'rspec'
require 'page-object'
require 'data_magic'
require 'selenium-webdriver'
require 'yaml'
World(PageObject::PageFactory)

$config = YAML.load_file 'config/config.yml'
case ENV['browser']
  when 'chrome'
    Selenium::WebDriver::Chrome.driver_path = 'drivers/chromedriver.exe'
    $browser = Selenium::WebDriver.for :chrome
  when 'firefox'
    Selenium::WebDriver::Firefox.driver_path = 'drivers/geckodriver.exe'
    $browser = Selenium::WebDriver.for :firefox
  else
    Selenium::WebDriver::Chrome.driver_path = 'drivers/chromedriver.exe'
    $browser = Selenium::WebDriver.for :chrome
end
$browser.manage.window.maximize

require 'require_all'
require_all 'pages'