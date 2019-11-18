class Trip < ApplicationRecord
  belongs_to :user
  validates :duracion, numericality: {greater_than: 0, allow_nil: false}
  has_many_attached :images
end
