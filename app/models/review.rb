class Review < ApplicationRecord
  belongs_to :place

  validates :reviewer, presence: true
  validates :body, presence: true
  validates :rating, presence: true, length: { minimum: 1, maximum: 10 }
end
