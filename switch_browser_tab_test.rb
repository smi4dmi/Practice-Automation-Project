require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://formy-project.herokuapp.com/switch-window'

new_tab = driver.find_element(id: 'new-tab-button')
new_tab.click

driver.switch_to.window(driver.window_handles[1])
driver.switch_to.window(driver.window_handles[0])

alert_btn = driver.find_element(id: 'alert-button')
alert_btn.click
driver.switch_to.alert.accept
