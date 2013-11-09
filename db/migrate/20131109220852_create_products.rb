class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :suit_id
      t.string :product_type
      t.string :product_model
      t.string :collection
      t.decimal :price
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
