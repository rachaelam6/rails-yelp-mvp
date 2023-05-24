class Restaurant < ApplicationRecord
#   To ensure that when a restaurant is destroyed, all of its reviews are also destroyed, set
#  up a dependent destroy association between the Restaurant and Review models.
#  By adding dependent: :destroy to the has_many association declaration,
# you specify that when a restaurant is destroyed, all associated reviews should also be destroyed.
  has_many :reviews, dependent: :destroy

  validates :name, presence: :true
  validates :address, presence: :true
  validates :category, presence: :true

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, inclusion: { in: CATEGORIES }
end
