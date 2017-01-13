require 'test_helper'

class RequestHistoryDetailsControllerTest < ActionController::TestCase
  setup do
    @request_history_detail = request_history_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:request_history_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request_history_detail" do
    assert_difference('RequestHistoryDetail.count') do
      post :create, request_history_detail: { edi_user_id: @request_history_detail.edi_user_id, fuctioction_number: @request_history_detail.fuctioction_number, manifest_id: @request_history_detail.manifest_id, request_history_id: @request_history_detail.request_history_id, request_value: @request_history_detail.request_value, result_status: @request_history_detail.result_status }
    end

    assert_redirected_to request_history_detail_path(assigns(:request_history_detail))
  end

  test "should show request_history_detail" do
    get :show, id: @request_history_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request_history_detail
    assert_response :success
  end

  test "should update request_history_detail" do
    patch :update, id: @request_history_detail, request_history_detail: { edi_user_id: @request_history_detail.edi_user_id, fuctioction_number: @request_history_detail.fuctioction_number, manifest_id: @request_history_detail.manifest_id, request_history_id: @request_history_detail.request_history_id, request_value: @request_history_detail.request_value, result_status: @request_history_detail.result_status }
    assert_redirected_to request_history_detail_path(assigns(:request_history_detail))
  end

  test "should destroy request_history_detail" do
    assert_difference('RequestHistoryDetail.count', -1) do
      delete :destroy, id: @request_history_detail
    end

    assert_redirected_to request_history_details_path
  end
end
