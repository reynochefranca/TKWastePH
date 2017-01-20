class CreateRequestHistories < ActiveRecord::Migration
  def change
    create_table :request_histories do |t|
      t.datetime :requested_at
      t.string :csv_file_path
      t.string :prmfile_path
      t.integer :request_type, default: 0
      t.integer :result_status, default: 0
      t.integer :sort, default: 0
      t.timestamps null: false
    end
  end
end
