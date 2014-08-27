class CreateWorkflowDefinitions < ActiveRecord::Migration
  def change
    create_table :workflow_definitions do |t|
      t.integer :client_id
      t.integer :parent_definition_id
      t.string :version
      t.string :created_by
      t.date :expires_at

      t.timestamps
    end
  end
end
