require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://formy-project.herokuapp.com/scroll'

full_name = driver.find_element(id: 'name')
driver.action.move_to(full_name).send_keys('Dmitriy Smirnov')

date_of_birth = driver.find_element(id: 'date')
date_of_birth.send_keys('01/02/1990')
