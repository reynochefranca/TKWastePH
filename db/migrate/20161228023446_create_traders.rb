class CreateTraders < ActiveRecord::Migration
  def change
    create_table :traders do |t|
      t.string :code
      t.string :name_kanji
      t.string :name_kana
      t.string :tel_number
      t.string :tel
      t.string :fax_name
      t.string :fax
      t.string :email
      t.string :devision
      t.string :memo
      t.string :industrial_waste_excellent_certification_type

      t.timestamps null: false
    end
  end
end
