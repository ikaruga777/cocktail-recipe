class User < ApplicationRecord
  has_many :attendances, dependent: :destory
  has_many :lunches, through: :attendances
  validates :name, presence: true
  validates :admin, inclusion: {in: [true,false]}
end
