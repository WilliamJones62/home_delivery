class AddBillAddr3ToOrdheads < ActiveRecord::Migration[5.1]
  def change
    add_column :ordheads, :bill_addr3, :string
  end
end
