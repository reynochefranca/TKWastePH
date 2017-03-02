require 'test_helper'

class Contracts::ContractProcesses::TradersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
