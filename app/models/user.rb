class User < ApplicationRecord
  has_many :lunches, dependent: :destroy
end
