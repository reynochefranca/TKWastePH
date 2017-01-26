class CreateManifests < ActiveRecord::Migration
  def change
    create_table :manifests do |t|
      t.datetime :applied_at
      t.string :applied_code
      t.string :referance_code
      t.integer :applied_commiter_id
      t.string :pre_conference_code
      t.datetime :pre_conferenced_at
      t.integer :category_id
      t.float :total_amount, null: true
      t.integer :unit_id
      t.integer :shape_id
      t.integer :package_id
      t.integer :hazardous_substance_id
      t.integer :disposal_method_id
      t.integer :collection_commit_trader_id
      t.integer :collection_commit_user_id
      t.datetime :collection_finished_at, null: true
      t.integer :disposal_commit_trader_id, null: true
      t.integer :disposal_commit_user_id, null: true
      t.datetime :disposal_finished_at, null: true
      t.datetime :final_disposal_finished_at, null: true
      t.integer :final_disposal_trader_plant_id, null: true

      t.timestamps null: false
    end
  end
end
