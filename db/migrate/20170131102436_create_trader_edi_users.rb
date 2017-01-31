class CreateTraderEdiUsers < ActiveRecord::Migration
  def change
    create_table :trader_edi_users do |t|
      t.belongs_to :trader, index: true
      t.belongs_to :edi_user, index: true
      t.belongs_to :role, index: true
      
      t.timestamps null: false
    end
  end
end
