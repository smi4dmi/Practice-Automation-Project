require 'selenium-webdriver'
require 'rspec'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://formy-project.herokuapp.com/modal'

driver.find_element(id: 'modal-button').click

wait = Selenium::WebDriver::Wait.new(timeout: 10)
wait.until { driver.find_element(id: 'ok-button').displayed? }

driver.find_element(id: 'ok-button').click
driver.find_element(id: 'close-button').click

driver.find_element(id: 'modal-button').click

wait = Selenium::WebDriver::Wait.new(timeout: 10)
wait.until { driver.find_element(xpath: '//*[@id="exampleModal"]/div/div/div[1]/button/span').displayed? }


driver.find_element(xpath: '//*[@id="exampleModal"]/div/div/div[1]/button/span').click

driver.quit
