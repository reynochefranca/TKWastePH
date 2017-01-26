class CreateTraders < ActiveRecord::Migration
  def change
    create_table :traders do |t|
      t.string :code
      t.string :name_kanji
      t.string :name_kana
      t.string :tel_name
      t.integer :tel
      t.string :fax_name
      t.integer :fax
      t.string :email
      t.string :division
      t.string :memo
      t.string :industriaial_waste_excellent_certification_type

      t.timestamps null: false
    end
  end
end