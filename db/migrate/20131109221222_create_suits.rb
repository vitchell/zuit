class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits do |t|
      t.string :suit_type
      t.string :suit_image

      t.timestamps
    end
  end
end
