class CreateLunches < ActiveRecord::Migration[5.2]
  def change
    create_table :lunches do |t|
      t.references :user, foreign_key: true
      t.string :place
      t.date :scheduled_at
      t.integer :state, default: :scheduled

      t.timestamps
    end
  end
end
