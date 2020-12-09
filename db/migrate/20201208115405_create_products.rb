class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :category
      t.string :title
      t.text :description
      t.float :inr_price
      t.float :usd_price
      t.string :img_path
      t.string :column_1
      t.string :column_2
      t.string :column_3
      t.string :column_4
      t.string :column_5

      t.timestamps
    end
  end
end
