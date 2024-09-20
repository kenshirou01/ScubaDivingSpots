class CreateCreatures < ActiveRecord::Migration[7.1]
  def change
    create_table :creatures do |t|
      t.string :name
      t.text :description
      t.text :periods
      t.string :photo

      t.timestamps
    end
  end
end
