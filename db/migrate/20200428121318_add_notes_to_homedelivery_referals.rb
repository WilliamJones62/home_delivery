class AddNotesToHomedeliveryReferals < ActiveRecord::Migration[5.1]
  def change
    add_column :homedelivery_referals, :notes, :text
  end
end
