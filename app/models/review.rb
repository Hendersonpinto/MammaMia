class Review < ApplicationRecord
  belongs_to :mom
  validates :description, presence: true
  validates :rating, presence: true, inclusion: { in: (1..5) }
end
