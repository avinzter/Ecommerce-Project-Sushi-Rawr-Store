class RemoveCategoryIdFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :categoryId
  end

  def down
    add_column :products, :categoryId, :integer
  end
end
