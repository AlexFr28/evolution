class CreateItemMoneys < ActiveRecord::Migration
  def change
    create_table :item_moneys do |t|
      t.string :name, null: false
      t.string :image, null: false
      t.string :link, null: false

      t.timestamps null: false
    end
  end
end
