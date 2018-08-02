class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :slack_identifier
      t.boolean :admin, default: false, null: false

      t.timestamps
    end
  end
end
