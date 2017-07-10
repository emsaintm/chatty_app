require 'test_helper'

class ScribblesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scribbles_index_url
    assert_response :success
  end

  test "should get show" do
    get scribbles_show_url
    assert_response :success
  end

  test "should get new" do
    get scribbles_new_url
    assert_response :success
  end

  test "should get edit" do
    get scribbles_edit_url
    assert_response :success
  end

end
