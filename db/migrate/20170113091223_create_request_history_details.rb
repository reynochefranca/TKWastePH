class CreateRequestHistoryDetails < ActiveRecord::Migration
  def change
    create_table :request_history_details do |t|
      t.integer :request_history_id
      t.integer :edi_user_id
      t.integer :manifest_id
      t.string :fuctioction_number
      t.string :send_request_value
      t.string :result_request_value
      t.integer :send_request_flg, default: 0
      t.integer :result_request_flg, default: 0
      t.timestamps null: false
    end
  end
end
