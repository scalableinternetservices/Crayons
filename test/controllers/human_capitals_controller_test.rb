require 'test_helper'

class HumanCapitalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @human_capital = human_capitals(:one)
  end

  test "should get index" do
    get human_capitals_url
    assert_response :success
  end

  test "should get new" do
    get new_human_capital_url
    assert_response :success
  end

  test "should create human_capital" do
    assert_difference('HumanCapital.count') do
      post human_capitals_url, params: { human_capital: { captcha_score: @human_capital.captcha_score, membership_length: @human_capital.membership_length, number_of_images_downloaded: @human_capital.number_of_images_downloaded, number_of_images_uploaded: @human_capital.number_of_images_uploaded, number_of_labels_made: @human_capital.number_of_labels_made, total: @human_capital.total } }
    end

    assert_redirected_to human_capital_url(HumanCapital.last)
  end

  test "should show human_capital" do
    get human_capital_url(@human_capital)
    assert_response :success
  end

  test "should get edit" do
    get edit_human_capital_url(@human_capital)
    assert_response :success
  end

  test "should update human_capital" do
    patch human_capital_url(@human_capital), params: { human_capital: { captcha_score: @human_capital.captcha_score, membership_length: @human_capital.membership_length, number_of_images_downloaded: @human_capital.number_of_images_downloaded, number_of_images_uploaded: @human_capital.number_of_images_uploaded, number_of_labels_made: @human_capital.number_of_labels_made, total: @human_capital.total } }
    assert_redirected_to human_capital_url(@human_capital)
  end

  test "should destroy human_capital" do
    assert_difference('HumanCapital.count', -1) do
      delete human_capital_url(@human_capital)
    end

    assert_redirected_to human_capitals_url
  end
end
