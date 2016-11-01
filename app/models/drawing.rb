class Drawing < ApplicationRecord
  belongs_to :user
  has_one :coordinate
end
