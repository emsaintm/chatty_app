require 'test_helper'

class ChitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chits_index_url
    assert_response :success
  end

  test "should get new" do
    get chits_new_url
    assert_response :success
  end

  test "should get edit" do
    get chits_edit_url
    assert_response :success
  end

  test "should get show" do
    get chits_show_url
    assert_response :success
  end

end
