class CreateTowns < ActiveRecord::Migration[5.1]
  def change
    create_table :towns do |t|
      t.string :township

      t.timestamps
    end
  end
end
