class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :description
      t.decimal :product_price
      t.boolean :isAvailable

      t.timestamps
    end
  end
end
