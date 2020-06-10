class CreateHomedeliveryReferals < ActiveRecord::Migration[5.1]
  def change
    create_table :homedelivery_referals do |t|
      t.string :contact_name
      t.string :contact_method_1
      t.string :contact_info_1
      t.string :contact_method_2
      t.string :contact_info_2
      t.string :contact_method_3
      t.string :contact_info_3
      t.string :referred_by
      t.string :relationship

      t.timestamps
    end
  end
end
