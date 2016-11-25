class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  validates :starts_at, presence: true
  validates :duration, presence: true
  validates :skill_id, presence: true
end
