class CreateSpots < ActiveRecord::Migration[7.1]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
