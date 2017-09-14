class Album < ApplicationRecord
  validates :title, :year, presence: true
  validates :live, inclusion: { in: [true, false] }
  validates :year, numericality: { minimum: 1800, maximum: Time.now.year }

  belongs_to :band
  has_many :albums
end
