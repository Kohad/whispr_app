require "test_helper"

class ConfessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get confessions_index_url
    assert_response :success
  end

  test "should get create" do
    get confessions_create_url
    assert_response :success
  end

  test "should get trending" do
    get confessions_trending_url
    assert_response :success
  end
end
