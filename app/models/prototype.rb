class Prototype < ApplicationRecord
  has_many :prototypes
  has_one_attached :image
end
