class CreateWorkflowTransactionEvents < ActiveRecord::Migration
  def change
    create_table :workflow_transaction_events do |t|
      t.integer :workflow_transaction_id
      t.string :event_name
      t.string :created_by

      t.timestamps
    end
  end
end
