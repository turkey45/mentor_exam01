class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.integer :price, null: false
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
