class CreateEdiUsers < ActiveRecord::Migration
  def change
    create_table :edi_users do |t|
      t.string :subscriber_number
      t.string :connection_registration_number
      t.string :published_confirmation_number
      t.string :password
      t.string :registration_user1_name
      t.string :registration_user1_email
      t.string :registration_user2_name
      t.string :registration_user2_email
      t.string :registration_user3_name
      t.string :registration_user3_email

      t.timestamps null: false
    end
  end
end
