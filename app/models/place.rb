class Place < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :conditional, presence: true
  validates :price, presence: true
end
