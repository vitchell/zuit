class AddPaidToCustomization < ActiveRecord::Migration
  def change
    add_column :customizations, :paid, :boolean
  end
end
