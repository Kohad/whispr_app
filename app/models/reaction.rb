class Reaction < ApplicationRecord
  belongs_to :confession
  validates :reaction_type, inclusion: { in: %w[like hug laugh] }
  validates :ip, presence: true
end
