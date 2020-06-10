class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :town
      t.integer :order_stat
      t.decimal :ext_price

      t.timestamps
    end
  end
end
