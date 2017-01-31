class CreateDisposalMethods < ActiveRecord::Migration
  def change
    create_table :disposal_methods do |t|
      t.string :code
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
