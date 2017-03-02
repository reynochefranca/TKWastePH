class CreateContractProcesses < ActiveRecord::Migration
  def change
    create_table :contract_processes do |t|
      t.belongs_to :contract, index: true
      t.integer :second_party_id
      t.integer :process_seq_id
      t.string :division_process
      

      t.timestamps null: false
    end
  end
end
