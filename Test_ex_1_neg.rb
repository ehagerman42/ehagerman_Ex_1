# File: Text_ex_1_neg
# Purpose:  Negative test against field name="entry.1041466219" (required field for user name).
#           Test will insert all other required fields (in this case by clicking the checkbox identified by "group_310473641_1"), and then clicking the Submit button.
# Expected Result:  A condition should exist indicating that the field is required. Submission should not proceed.
#                   This test will also confirm the expected text shown to the user:  <div class="required-message">This is a required question</div>

require 'rubygems'
require 'test/unit'
extend Test::Unit::Assertions
require 'selenium-webdriver'

class TestExNegative < Test::Unit::TestCase
# initialize browser and fetch the web page
driver = Selenium::WebDriver.for :firefox
driver.get "https://docs.google.com/forms/d/181whJlBduFo5qtDbxkBDWHjNQML5RutvHWOCjEFWswY/viewform"

# wait a bit for the screen to load (just in case)
wait = Selenium::WebDriver::Wait.new(:timeout => 10)

# skip the user name field (shown here as a comment only)
# element = driver.find_element :name => "entry.1041466219"
# element.send_keys "Newuser1"

# go directly to the first checkbox (required) and click it
checkbox1 = driver.find_element :id => "group_310473641_1"
checkbox1.click()

# go to the submit button and click it
button1 = driver.find_element :name => "submit"
button1.click()

# add asertion block here to confirm focus is in the user name field

# clicking it once should set focus in the user name field, so click it again to show the required field message
button1.click()

# add asertion block here to confirm that the "required field" message is visible for user name

# Both the above assertions should pass for this test to pass.

end

