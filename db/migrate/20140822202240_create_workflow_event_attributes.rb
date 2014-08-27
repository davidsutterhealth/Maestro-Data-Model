class CreateWorkflowEventAttributes < ActiveRecord::Migration
  def change
    create_table :workflow_event_attributes do |t|
      t.integer :workflow_event_id
      t.string :attribute_key
      t.string :attribute_value
      t.string :created_by

      t.timestamps
    end
  end
end
