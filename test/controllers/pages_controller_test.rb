require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    
    get contact_url
    assert_response :success
    puts "Passed"
    

  end

  test "should get privacy" do
    get privacy_url
    assert_response :success
    puts "Passed"
  end

  # test "should get environmental" do
  #   get environmental_url
  #   assert_response :success
  # end

  test "should get terms_of_use" do
    get terms_of_use_url
    assert_response :success
    puts "Passed"
  end

  test "should get cookies" do
    get cookies_url
    assert_response :success
    puts "Passed"
  end

  test "should get testomonials" do
    get testomonials_url
    assert_response :success
    puts "Passed"
  end

  test "should get about_us" do
    get about_us_url
    assert_response :success
    puts "Passed"
  end

end
