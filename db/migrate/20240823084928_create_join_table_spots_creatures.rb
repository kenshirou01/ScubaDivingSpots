class CreateJoinTableSpotsCreatures < ActiveRecord::Migration[7.1]
  def change
    create_join_table :spots, :creatures do |t|
      t.index :spot_id
      t.index :creature_id
      # 他のカラムや制約を追加することもできます
    end
  end
end
