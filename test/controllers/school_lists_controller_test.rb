require 'test_helper'

class SchoolListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get school_lists_index_url
    assert_response :success
  end

  test "should get new" do
    get school_lists_new_url
    assert_response :success
  end

  test "should get create" do
    get school_lists_create_url
    assert_response :success
  end

  test "should get edit" do
    get school_lists_edit_url
    assert_response :success
  end

  test "should get update" do
    get school_lists_update_url
    assert_response :success
  end

  test "should get destroy" do
    get school_lists_destroy_url
    assert_response :success
  end

  test "should get show" do
    get school_lists_show_url
    assert_response :success
  end

end
