class Lunch < ApplicationRecord
  belongs_to :user
  has_one :topic, dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :user
  validates :state, presence: true
  validates :scheduled_for, presence: true

  enum state: {scheduled: 0, done: 1, canceled: 2}

  def invite(invitee)
    attendances.create(user: invitee)
  end
end
