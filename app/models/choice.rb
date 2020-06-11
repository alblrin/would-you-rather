class Choice < ApplicationRecord
  belongs_to :category
  has_many :answers, dependent: :destroy

  validates :first_choice, presence: true
  validates :second_choice, presence: true
end
