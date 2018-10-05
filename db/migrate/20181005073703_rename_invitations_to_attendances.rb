class RenameInvitationsToAttendances < ActiveRecord::Migration[5.2]
  def change
    rename_table :invitations, :attendances
  end
end
