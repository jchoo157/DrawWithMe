class Drawing < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one :coordinate
end
