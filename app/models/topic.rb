class Topic < ApplicationRecord
  belongs_to :lunch
  validates :description, presence: true
end
