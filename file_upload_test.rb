require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://formy-project.herokuapp.com/fileupload'

choose_btn = driver.find_element(class: 'btn-choose')
choose_btn.click

choose_field = driver.find_element(id: 'file-upload-field')
choose_field.click
