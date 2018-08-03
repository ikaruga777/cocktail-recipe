class CreateTopic < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.references :lunch, foreign_key: true
      t.text :description, null: false

      t.timestamps
    end
  end
end
