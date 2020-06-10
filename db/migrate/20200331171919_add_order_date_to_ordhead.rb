class AddOrderDateToOrdhead < ActiveRecord::Migration[5.1]
  def change
    add_column :ordheads, :order_date, :date
  end
end
