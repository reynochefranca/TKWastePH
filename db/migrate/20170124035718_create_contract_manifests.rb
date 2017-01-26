class CreateContractManifests < ActiveRecord::Migration
  def change
    create_table :contract_manifests do |t|
      t.integer :contract_id
      t.integer :manifest_id, null: true

      t.timestamps null: false
    end
  end
end
