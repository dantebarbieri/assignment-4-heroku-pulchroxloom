require 'test_helper'

class BookCollectionControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get book_collection_home_url
    assert_response :success
  end

  test "should get add" do
    get book_collection_add_url
    assert_response :success
  end

  test "should get update" do
    get book_collection_update_url
    assert_response :success
  end

  test "should get details" do
    get book_collection_details_url
    assert_response :success
  end

  test "should get delete" do
    get book_collection_delete_url
    assert_response :success
  end

end
