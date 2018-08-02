class User < ApplicationRecord
  has_many :lunches, dependent: :destroy
  validates :slack_id, presence: true
  validates :name, presence: true
  validates :admin, presence: true
end
