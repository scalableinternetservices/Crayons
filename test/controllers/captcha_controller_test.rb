require 'test_helper'

class CaptchaControllerTest < ActionDispatch::IntegrationTest
  test "should get captcha" do
    get captcha_captcha_url
    assert_response :success
  end

end
