class AddItemNameToMenStores < ActiveRecord::Migration
  def change
    add_column :men_stores, :item_name, :string
  end
end
