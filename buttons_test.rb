require 'selenium-webDriver'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://formy-project.herokuapp.com/buttons'

primary_button = driver.find_element(class: 'btn-primary')
primary_button.click

success_button = driver.find_element(class: 'btn-success')
success_button.click

info_button = driver.find_element(css: '.btn.btn-lg.btn-info')
info_button.click

warning_button = driver.find_element(css: '.btn.btn-lg.btn-warning')
warning_button.click

danger_button = driver.find_element(class: 'btn-danger')
danger_button.click

link_button = driver.find_element(css: '.btn.btn-lg.btn-link')
link_button.click

left_button = driver.find_element(xpath: '/html/body/div/form/div[2]/div/div/div/button[1]')
left_button.click

middle_button = driver.find_element(xpath: '/html/body/div/form/div[2]/div/div/div/button[2]')
middle_button.click

right_button = driver.find_element(xpath: '/html/body/div/form/div[2]/div/div/div/button[3]')
right_button.click

button_1 = driver.find_element(xpath: '/html/body/div/form/div[3]/div/div/div/button[1]')
button_1.click

button_2 = driver.find_element(xpath: '/html/body/div/form/div[3]/div/div/div/button[2]')
button_2.click

drop_down_button = driver.find_element(id: 'btnGroupDrop1')
drop_down_button.click

 drop_down_link_1 = driver.find_element(link_text: 'Dropdown link 1')
 drop_down_link_1.click
