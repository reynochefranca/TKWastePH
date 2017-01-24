class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :trader_id
      t.string :email
      t.string :name_kanji
      t.string :name_kana
      t.string :tel_name
      t.string :tel
      t.string :position
      t.string :memo
      t.string :login_id
      t.string :encrypted_password
      t.string :reset_password_token
      t.string :reset_password_sent_at
      t.string :remember_created_a
      t.string :sign_in_court
      t.string :current_sign_in_at
      t.string :last_sign_in_at
      t.string :current_sign_in_at_ip
      t.string :last_sign_in_ip

      t.timestamps null: false
    end
  end
end
