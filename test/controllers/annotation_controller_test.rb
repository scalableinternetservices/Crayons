require 'test_helper'

class AnnotationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get annotation_new_url
    assert_response :success
  end

end
