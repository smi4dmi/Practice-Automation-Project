require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://formy-project.herokuapp.com/dropdown'

drop_down_btn = driver.find_element(id: 'dropdownMenuButton')
drop_down_btn.click

menu_item_buttons = driver.find_element(link_text: 'Buttons')
menu_item_buttons.click

driver.navigate.to 'https://formy-project.herokuapp.com/dropdown'

drop_down_btn = driver.find_element(id: 'dropdownMenuButton')
drop_down_btn.click


menu_item_file_upload = driver.find_element(xpath: '/html/body/div/div/div/a[8]')
menu_item_file_upload.click
