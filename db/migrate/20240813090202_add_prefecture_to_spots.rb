class AddPrefectureToSpots < ActiveRecord::Migration[7.1]
  def change
    add_reference :spots, :prefecture, null: false, foreign_key: true
  end
end
