class Invitation < ApplicationRecord
  belongs_to :lunch
  belongs_to :user
end
