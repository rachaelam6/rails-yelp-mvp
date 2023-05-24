class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: :true
  validates :rating, presence: :true

  # the validates method is used to add a validation for the rating attribute.
  # The numericality validator is applied, specifying that the value of rating must be a number
  # within the range of 0 to 5, inclusive
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

  # validates :your_column_name, numericality: { only_integer: true }
  validates :rating, numericality: { only_integer: true }
end
