require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get privacy" do
    get pages_privacy_url
    assert_response :success
  end

  test "should get environmental" do
    get pages_environmental_url
    assert_response :success
  end

  test "should get terms_of_use" do
    get pages_terms_of_use_url
    assert_response :success
  end

  test "should get cookies" do
    get pages_cookies_url
    assert_response :success
  end

  test "should get testomonials" do
    get pages_testomonials_url
    assert_response :success
  end

  test "should get about_us" do
    get pages_about_us_url
    assert_response :success
  end

end
