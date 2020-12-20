require 'test_helper'

class MetroSearchControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

end
