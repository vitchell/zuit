class CreateCustomizations < ActiveRecord::Migration
  def change
    create_table :customizations do |t|
      t.integer :order_id
      t.integer :product_id
      t.string :jacket_lapel
      t.string :jacket_button
      t.string :jacket_pocket
      t.string :jacket_lining
      t.string :jacket_monogram
      t.string :pant_type
      t.string :pant_length
      t.string :skirt_type
      t.string :skirt_length

      t.timestamps
    end
  end
end
