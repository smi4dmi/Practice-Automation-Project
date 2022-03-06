require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://formy-project.herokuapp.com/enabled'

dis_field = driver.find_element(id: 'disabledInput')
dis_field.click

ena_field = driver.find_element(id: 'input')
ena_field.send_keys('Hello World!')
