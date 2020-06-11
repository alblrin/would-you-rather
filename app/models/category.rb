class Category < ApplicationRecord
  has_many :choices, dependent: :destroy

  validates :name, presence: true
end
