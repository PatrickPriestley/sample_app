require 'test_helper'

class DollarCostControllerTest < ActionController::TestCase
  test "should get dollar" do
    get :dollar
    assert_response :success
  end

end
