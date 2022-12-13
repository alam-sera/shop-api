class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :price
      t.text :description
      t.integer :stock

      t.timestamps
    end
  end
end
