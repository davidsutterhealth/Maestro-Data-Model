class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :entity_type
      t.string :entity_key
      t.string :entity_value
      t.string :created_by
      t.string :expires_at

      t.timestamps
    end
  end
end
