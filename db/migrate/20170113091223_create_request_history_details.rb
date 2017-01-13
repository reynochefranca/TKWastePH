class CreateRequestHistoryDetails < ActiveRecord::Migration
  def change
    create_table :request_history_details do |t|
      t.integer :request_history_id
      t.integer :edi_user_id
      t.integer :manifest_id
      t.string :fuctioction_number
      t.string :request_value
      t.integer :result_status

      t.timestamps null: false
    end
  end
end
