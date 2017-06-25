require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get bio" do
    get pages_bio_url
    assert_response :success
  end

  test "should get packages" do
    get pages_packages_url
    assert_response :success
  end

  test "should get merch" do
    get pages_merch_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get faq" do
    get pages_faq_url
    assert_response :success
  end

  test "should get cart" do
    get pages_cart_url
    assert_response :success
  end

end
