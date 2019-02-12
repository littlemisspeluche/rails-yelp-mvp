INC = %w[chinese italian japanese french belgian]
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: INC }
end
