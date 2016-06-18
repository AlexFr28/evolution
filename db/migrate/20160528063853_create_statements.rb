class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.references :account, index: true, null: false
      t.float :amount, null: false
      t.string :date, null: false

      t.timestamps null: false
    end
  end
end
