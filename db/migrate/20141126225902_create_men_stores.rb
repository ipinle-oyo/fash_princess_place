class CreateMenStores < ActiveRecord::Migration
  def change
    create_table :men_stores do |t|

      t.timestamps
    end
  end
end
