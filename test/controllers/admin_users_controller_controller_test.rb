require 'test_helper'

class AdminUsersControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index,new,create,edit,update,delete,destroy" do
    get admin_users_controller_index,new,create,edit,update,delete,destroy_url
    assert_response :success
  end

end
