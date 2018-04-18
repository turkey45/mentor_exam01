class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :family_name, null: false
      t.string :first_name, null: false
      t.timestamps
    end
  end
end
