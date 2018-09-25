class Fetches < ActiveRecord::Migration[5.2]
  def change
    create_table :fetches do |t|
      t.string :text
      t.timestamps
    end
  end
end
