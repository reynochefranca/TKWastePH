require 'test_helper'

class NewDischargeBusinessRegistrationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
