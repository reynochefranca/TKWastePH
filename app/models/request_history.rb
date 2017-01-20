class RequestHistory < ActiveRecord::Base
  enum request_type: { send_request: 0, result_request: 1 }
  enum result_status: { unsent: 0, success: 1, failed:2 }

  has_many :request_history_details
  scope :next_send_request, -> { send_request.unsent.order(:sort).first }
  scope :next_result_request, -> { result_request.unsent.order(:sort).first }
end
