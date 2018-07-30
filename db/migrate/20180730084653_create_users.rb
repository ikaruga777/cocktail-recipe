class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.ID :id
      t.String :name
      t.String :email
      t.boolean :cocktail

      t.timestamps
    end
  end
end
