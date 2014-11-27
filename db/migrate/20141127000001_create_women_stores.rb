class CreateWomenStores < ActiveRecord::Migration
  def change
    create_table :women_stores do |t|
      t.string :item_name
      t.string :image

      t.timestamps
    end
  end
end
