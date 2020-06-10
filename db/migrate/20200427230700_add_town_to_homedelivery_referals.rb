class AddTownToHomedeliveryReferals < ActiveRecord::Migration[5.1]
  def change
    add_column :homedelivery_referals, :town, :string
  end
end
