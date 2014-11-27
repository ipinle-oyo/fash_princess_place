class AddImageToMenStores < ActiveRecord::Migration
  def change
    add_column :men_stores, :image, :string
  end
end
