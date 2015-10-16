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
  end

  test "welcome messsage appears for new users" do
    get signup_path
      post_via_redirect users_path, user: { name: "Mike Guy",
                                            email: "mike@guy.com",
                                            password: "foobar",
                                            password_confirmation: "foobar"}
  end
end
