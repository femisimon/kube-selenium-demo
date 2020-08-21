require 'selenium-webdriver'
require 'rspec'
require_relative '../test_helper'

module BaseClass
  class << self

    attr_reader :driver

    def initialize(driver)
      @driver = driver
    end

    def start_browser
      Selenium::WebDriver::Chrome.driver_path='./drivers/chromedriver'
      @driver = Selenium::WebDriver.for :chrome
      screen_resolution = @driver.execute_script('return [screen.width, screen.height]')
      @driver.manage.window.resize_to *screen_resolution
    end

    def start_remote_browser
      caps = Selenium::WebDriver::Remote::Capabilities.send('chrome')
      @driver = Selenium::WebDriver.for(:remote, url: 'http://192.168.64.2:30001/wd/hub', desired_capabilities: caps)
      @driver.manage.window.size = Selenium::WebDriver::Dimension.new(1920, 1080)
    end
  end
end
