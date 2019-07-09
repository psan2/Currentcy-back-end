class CreateTrackers < ActiveRecord::Migration[5.2]
  def change
    create_table :trackers do |t|
      t.references :user, foreign_key: true
      t.integer :from_currency_id
      t.integer :to_currency_id

      t.timestamps
    end
  end
end
