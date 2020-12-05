class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.references :list
      t.string :description

      t.timestamps
    end
  end
end
