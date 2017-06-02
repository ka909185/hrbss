require 'test_helper'

class YakushokusControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
