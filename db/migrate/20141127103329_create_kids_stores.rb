class CreateKidsStores < ActiveRecord::Migration
  def change
    create_table :kids_stores do |t|
      t.string :item_name
      t.string :image

      t.timestamps
    end
  end
end
