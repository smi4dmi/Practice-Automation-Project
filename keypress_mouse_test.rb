require 'selenium-webdriver'
require 'rspec'

describe 'key press mouse button' do
  it 'press the key and click on button' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://formy-project.herokuapp.com/keypress"

    name = driver.find_element(id: 'name').send_keys('Dmitriy M. Smirnov')

    button = driver.find_element(id: 'button').click

    driver.quit
  end
end
