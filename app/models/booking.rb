class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  validates :starts_at, presence: true
  validates :duration, presence: true
end
