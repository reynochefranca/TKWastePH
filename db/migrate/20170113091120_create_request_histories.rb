class CreateRequestHistories < ActiveRecord::Migration
  def change
    create_table :request_histories do |t|
      t.datetime :requested_at
      t.string :csv_file_path

      t.timestamps null: false
    end
  end
end
