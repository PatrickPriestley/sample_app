require 'test_helper'

class ValueAveragingControllerTest < ActionController::TestCase
  test "should get value" do
    get :value
    assert_response :success
  end

end
