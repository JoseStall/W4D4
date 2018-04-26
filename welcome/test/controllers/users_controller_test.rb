require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get create_user" do
    get users_create_user_url
    assert_response :success
  end

end
