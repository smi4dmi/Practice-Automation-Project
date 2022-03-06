require 'selenium-webdriver'
require 'rspec'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://formy-project.herokuapp.com/datepicker'

driver.find_element(id: 'datepicker').click

driver.find_element(xpath: '/html/body/div[2]/div[1]/table/tbody/tr[4]/td[4]').click

driver.find_element(id: 'datepicker').send_keys('15/10/1982')
driver.find_element(id: 'datepicker').send_keys :return
