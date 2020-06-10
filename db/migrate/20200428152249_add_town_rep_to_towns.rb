class AddTownRepToTowns < ActiveRecord::Migration[5.1]
  def change
    add_column :towns, :town_rep, :string
  end
end
