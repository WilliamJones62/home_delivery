class AddRelNumbToSales < ActiveRecord::Migration[5.1]
  def change
    add_column :sales, :rel_numb, :string
  end
end
