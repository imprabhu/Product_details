class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :product_name
      t.text :product_category
      t.text :vendor_name
      t.decimal :price
      t.integer :product_qty

      t.timestamps
    end
  end
end
