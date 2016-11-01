require 'test_helper'

class DrawingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drawings_index_url
    assert_response :success
  end

  test "should get new" do
    get drawings_new_url
    assert_response :success
  end

  test "should get create" do
    get drawings_create_url
    assert_response :success
  end

  test "should get show" do
    get drawings_show_url
    assert_response :success
  end

  test "should get edit" do
    get drawings_edit_url
    assert_response :success
  end

  test "should get update" do
    get drawings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get drawings_destroy_url
    assert_response :success
  end

end
