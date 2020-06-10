class AddContactInfoToTowns < ActiveRecord::Migration[5.1]
  def change
    add_column :towns, :contact_info, :string
  end
end
