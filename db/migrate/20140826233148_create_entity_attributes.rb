class CreateEntityAttributes < ActiveRecord::Migration
  def change
    create_table :entity_attributes do |t|
      t.integer :category_id
      t.string :attribute_key
      t.string :attribute_value
      t.string :created_by

      t.timestamps
    end
  end
end
