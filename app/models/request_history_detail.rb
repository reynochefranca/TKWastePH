class RequestHistoryDetail < ActiveRecord::Base
  enum send_request_flg: { unsent_send_request: 0, success_send_request: 1, failed_send_request:2 }
  enum result_request_flg: { unsent_result_request: 0, success_result_request: 1, failed_result_request:2 }

  belongs_to :request_history
  # belongs_to :manifest
  belongs_to :edi_user

end
