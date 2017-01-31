class CreateManifests < ActiveRecord::Migration
  def change
    create_table :manifests do |t|
      t.datetime :applied_at
      t.string :applied_code
      t.string :reference_code
      t.integer :applied_commiter_id
      t.string :pre_conference_code
      t.datetime :pre_conferenced_at
      t.belongs_to :category, index: true
      t.float :total_amount
      t.belongs_to :unit, index: true
      t.belongs_to :shape, index: true
      t.belongs_to :package, index: true
      t.belongs_to :hazardous_substance, index: true
      t.belongs_to :disposal_method, index: true
      t.integer :collection_commit_trader_id
      t.integer :collection_commit_user_id
      t.datetime :collection_finished_at
      t.integer :disposal_commit_trader_id
      t.integer :disposal_commit_user_id
      t.datetime :disposal_finished_at
      t.datetime :final_disposal_finished_at
      t.integer :final_disposal_trader_plant_id
      t.timestamps null: false
    end
  end
end
