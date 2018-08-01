class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.references :lunch, foreign_key: true
      t.string :name, not_null: true

      t.timestamps
    end
  end
end
