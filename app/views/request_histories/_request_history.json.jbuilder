json.extract! request_history, :id, :requested_at, :csv_file_path, :created_at, :updated_at
json.url request_history_url(request_history, format: :json)