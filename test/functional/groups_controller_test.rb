require 'test_helper'

class GroupsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

end