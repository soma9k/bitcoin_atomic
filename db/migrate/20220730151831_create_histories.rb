class CreateHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :histories do |t|
      t.string :to_adress
      t.float :amount
      t.string :txid

      t.timestamps
    end
  end
end
