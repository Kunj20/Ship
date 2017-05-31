class Job < ApplicationRecord
  has_many :assignments
  has_many :boats, through: :assignments

  validates :name, uniqueness: true
  validates :containers, numericality: true
  validates :cost, numericality: {greater_than: 1000}
  validates :description, length: {minimum: 50}
end
