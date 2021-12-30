class Well < ApplicationRecord
  validates :name, presence: true
  validates :facility, presence: true
  validates :company, presence: true
  validates :als, presence: true
end
