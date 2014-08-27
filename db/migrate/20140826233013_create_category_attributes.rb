class CreateCategoryAttributes < ActiveRecord::Migration
  def change
    create_table :category_attributes do |t|
      t.integer :category_id
      t.string :attribute_key
      t.string :attribute_value
      t.string :created_by

      t.timestamps
    end
  end
end
