require 'test_helper'

class DogsDowControllerTest < ActionController::TestCase
  test "should get dogs" do
    get :dogs
    assert_response :success
  end

end
