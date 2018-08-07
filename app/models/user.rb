class User < ApplicationRecord
  has_many :lunches, dependent: :destroy
  validates :name, presence: true
  validates :admin, inclusion: {in: [true,false]}
end
