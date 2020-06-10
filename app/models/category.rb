class Category < ApplicationRecord
  has_many :choices

  validates :name, presence: true
end
