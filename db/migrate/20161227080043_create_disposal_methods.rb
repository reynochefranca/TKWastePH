class CreateDisposalMethods < ActiveRecord::Migration
  def change
    create_table :disposal_methods do |t|
      t.string :code
      t.string :name

      t.timestamps null: false
    end
  end
end
