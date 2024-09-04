require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get books_home_url
    assert_response :success
  end

  test "should get create" do
    get books_create_url
    assert_response :success
  end

  test "should get edit" do
    get books_edit_url
    assert_response :success
  end

  test "should get view" do
    get books_view_url
    assert_response :success
  end

  test "should get delete" do
    get books_delete_url
    assert_response :success
  end
end
