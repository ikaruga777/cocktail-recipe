class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.references :lunch, foreign_key: true , null: false
      t.references :user, foregin_key: true, null: false

      t.timestamps
    end
  end
end
