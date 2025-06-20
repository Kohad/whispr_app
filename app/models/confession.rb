class Confession < ApplicationRecord
  has_many :reactions, dependent: :destroy
  validates :body, presence: true, length: { maximum: 500 }
  validates :ip, presence: true

  def score
    reactions.count + [0, 10 - (Time.now - created_at).to_i / 3600].max
  end
end