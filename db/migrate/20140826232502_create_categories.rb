class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :entity_id
      t.string :category
      t.string :created_by

      t.timestamps
    end
  end
end
