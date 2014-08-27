class CreateWorkflowTransactions < ActiveRecord::Migration
  def change
    create_table :workflow_transactions do |t|
      t.integer :workflow_definition_id
      t.string :created_by

      t.timestamps
    end
  end
end
