class CreateEntityXrefs < ActiveRecord::Migration
  def change
    create_table :entity_xrefs do |t|
      t.integer :category_id
      t.integer :left_entity_id
      t.integer :right_entity_id
      t.string :created_by

      t.timestamps
    end
  end
end
