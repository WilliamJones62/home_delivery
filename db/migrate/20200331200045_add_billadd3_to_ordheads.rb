class AddBilladd3ToOrdheads < ActiveRecord::Migration[5.1]
  def change
    add_column :ordheads, :billadd3, :string
  end
end
