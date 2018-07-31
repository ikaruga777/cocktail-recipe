class CreateLanches < ActiveRecord::Migration[5.2]
  def change
    create_table :lanches do |t|
      t.references :user, foreign_key: true
      t.date :scheduled_at

      t.timestamps
    end
  end
end
