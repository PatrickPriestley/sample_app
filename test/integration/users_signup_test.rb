require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: { name: "",
                               email: "user@invalid",
                               password:              "foo",
                               password_confirmation: "bar"}
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { name: "Joe Dude",
                                    email: "joe.dude@mail.com",
                                    password: "foobar",
                                    password_confirmation: "foobar"}
    end
    assert_template 'users/show'
    assert is_logged_in?
  end

  #test "user accessing url, should be redirected when logged in" do
  #  get edit_user_path
  #end
end
