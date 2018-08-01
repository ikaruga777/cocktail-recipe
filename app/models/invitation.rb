class Invitation < ApplicationRecord
  belongs_to :lunch
  belongs_to :user
  belongs_to :invitees, class_name: "User"
end
