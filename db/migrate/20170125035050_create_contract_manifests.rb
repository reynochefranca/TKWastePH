class CreateContractManifests < ActiveRecord::Migration
  def change
    create_table :contract_manifests do |t|
      t.belongs_to :contract, index: true
      t.belongs_to :manifest, index: true
      t.timestamps null: false
    end
  end
end
