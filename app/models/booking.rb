class Booking < ApplicationRecord
  belongs_to :user
  validates :starts_at, presence: true
  validates :duration, presence: true
end
