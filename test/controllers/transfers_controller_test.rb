require 'test_helper'

class TransfersControllerTest < ActionController::TestCase
  test "should get send_money" do
    get :send_money
    assert_response :success
  end

end
