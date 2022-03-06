require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://formy-project.herokuapp.com/radiobutton'

radio_btn1 = driver.find_element(id: 'radio-button-1')
radio_btn1.click

radio_btn2 = driver.find_element(css: 'input[value="option2"]')
radio_btn2.click

radio_btn3 = driver.find_element(xpath: '/html/body/div/div[3]/input')
radio_btn3.click

#checkbox button

driver.navigate.to 'https://formy-project.herokuapp.com/checkbox'

chkbx_button1 = driver.find_element(id: 'checkbox-1')
chkbx_button1.click

chkbx_button2 = driver.find_element(css: 'input[value="checkbox-2"]')
chkbx_button2.click

chkbx_button3 = driver.find_element(xpath: '//*[@id="checkbox-3"]')
chkbx_button3.click
