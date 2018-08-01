class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.references :lunch, foreign_key: true
      t.references :user, foregin_key: true

      t.timestamps
    end
  end
end
