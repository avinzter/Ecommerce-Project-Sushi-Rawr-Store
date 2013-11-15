class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :pst_rate
      t.decimal :gst_rate

      t.timestamps
    end
  end
end
