# File: Text_ex_1_pos
# Purpose:  Positive test.
#           Test will insert all required fields, and then click the Submit button.
# Expected Result:  An exception should not be thrown. Submission should proceed, and the confirmation screen should be displayed.

require 'rubygems'
require 'test/unit'
extend Test::Unit::Assertions
require 'selenium-webdriver'

class TestExPositive < Test::Unit::TestCase
# initialize browser and fetch the web page
driver = Selenium::WebDriver.for :firefox
driver.get "https://docs.google.com/forms/d/181whJlBduFo5qtDbxkBDWHjNQML5RutvHWOCjEFWswY/viewform"

# wait a bit for the screen to load (just in case)
wait = Selenium::WebDriver::Wait.new(:timeout => 10)

# Find and populate the required field user name.  For purposes of this test, it is assumed that this user name does not already exist in the system.
element = driver.find_element :name => "entry.1041466219"
element.send_keys "Newuser1"

# go to the first checkbox (required) and click it
checkbox1 = driver.find_element :id => "group_310473641_1"
checkbox1.click()

# go to the submit button and click it
button1 = driver.find_element :name => "submit"
button1.click()

# add asertion block here to confirm that the confirmation screen was successfully displayed

end

