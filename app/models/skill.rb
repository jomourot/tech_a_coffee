class Skill < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :meeting_point, presence: true
  validates :price, presence: true
  geocoded_by :meeting_point
  after_validation :geocode, if: :meeting_point_changed?
end
