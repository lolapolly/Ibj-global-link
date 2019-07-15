class Item < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :price, numericality: { only_integer: true }, presence: true
  validates :photo, presence: true
end
