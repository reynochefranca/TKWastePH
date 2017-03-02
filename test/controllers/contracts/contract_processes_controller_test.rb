require 'test_helper'

class Contracts::ContractProcessesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
