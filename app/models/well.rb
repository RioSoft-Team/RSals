class Well < ApplicationRecord
  has_many :tanks, dependent: :destroy

  validates :name, presence: true
  validates :facility, presence: true
  validates :company, presence: true
  validates :als, presence: true
end
