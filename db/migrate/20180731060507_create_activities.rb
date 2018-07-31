class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.references :lanch, foreign_key: true
      t.string :place, not_null: true
      t.text :topic

      t.timestamps
    end
  end
end
