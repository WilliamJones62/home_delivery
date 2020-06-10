class AddOrderNumbToSales < ActiveRecord::Migration[5.1]
  def change
    add_column :sales, :order_numb, :string
  end
end
