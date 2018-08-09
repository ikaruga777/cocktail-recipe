class CreateLunches < ActiveRecord::Migration[5.2]
  def change
    create_table :lunches do |t|
      t.references :user, foreign_key: true
      t.string :place, null: true
      t.date :scheduled_for
      t.integer :state, default: Lunch.states[:scheduled], null: false

      t.timestamps
    end
  end
end
