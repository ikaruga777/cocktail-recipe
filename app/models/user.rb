class User < ApplicationRecord
  has_many :lanches, dependent: :destroy
end
