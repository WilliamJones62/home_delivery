class CreateOrdheads < ActiveRecord::Migration[5.1]
  def change
    create_table :ordheads do |t|
      t.string :order_stat
      t.string :route_code

      t.timestamps
    end
  end
end
