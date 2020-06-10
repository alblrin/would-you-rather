class Answer < ApplicationRecord
  belongs_to :choice
  belongs_to :user

  validates :choice_made, presence: true
end
