class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :code
      t.string :name_kanji
      t.string :name_kana
      t.string :abbreviation
      t.string :zipcode
      t.string :prefecture
      t.string :city
      t.string :address
      t.string :tel1
      t.string :tel2
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
