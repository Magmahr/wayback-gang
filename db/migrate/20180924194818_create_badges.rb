class CreateBadges < ActiveRecord::Migration[5.2]
  def change
    create_table :badges do |t|
      t.string :name
      t.integer :player_id, foreign_key: true
      t.timestamps
    end
  end
end
