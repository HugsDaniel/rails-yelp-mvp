class Restaurant < ApplicationRecord
  has_many :reviews
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates_associated :reviews
end
