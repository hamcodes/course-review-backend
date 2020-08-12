class Review < ApplicationRecord
  belongs_to :course
  validates :description, presence: true
end
