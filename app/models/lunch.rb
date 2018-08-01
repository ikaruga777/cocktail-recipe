class Lunch < ApplicationRecord
  belongs_to :user
  has_one :topic, dependent: :destroy
  has_many :invitations
  has_many :invitees, through: :invitations, source: :user

  enum state: %i[scheduled done canceled]
  def invite(invitee)
    invitations.create(user: invitee)
  end
end
