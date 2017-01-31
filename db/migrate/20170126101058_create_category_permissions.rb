class CreateCategoryPermissions < ActiveRecord::Migration
  def change
    create_table :category_permissions do |t|
      t.integer :category_id
      t.integer :permission_id
      t.timestamps null: false
    end
  end
end
