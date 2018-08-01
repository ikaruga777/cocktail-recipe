class Lunch < ApplicationRecord
  belongs_to :user
  has_one :activity, dependent: :destroy
  has_many :guests, dependent: :destroy
end
