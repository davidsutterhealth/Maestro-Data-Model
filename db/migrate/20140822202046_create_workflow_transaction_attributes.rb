class CreateWorkflowTransactionAttributes < ActiveRecord::Migration
  def change
    create_table :workflow_transaction_attributes do |t|
      t.integer :workflow_transaction_id
      t.string :attribute_key
      t.string :attribute_value
      t.string :created_by

      t.timestamps
    end
  end
end
