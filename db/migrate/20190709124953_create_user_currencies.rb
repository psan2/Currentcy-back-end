class CreateUserCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :user_currencies do |t|
      t.references :user
      t.references :currency

      t.timestamps
    end
  end
end
