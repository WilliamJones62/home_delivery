class AddCouponCodeToTowns < ActiveRecord::Migration[5.1]
  def change
    add_column :towns, :coupon_code, :string
  end
end
