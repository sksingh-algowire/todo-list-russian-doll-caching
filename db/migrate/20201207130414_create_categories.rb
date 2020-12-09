class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.text :tagline
      t.string :img_path

      t.timestamps
    end
  end
end
