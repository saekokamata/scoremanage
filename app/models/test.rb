class Test < ApplicationRecord
  belongs_to :user

  validates :year_month, presence: true
  validates :week,presence: true, length: { maximum:1 }
  validates :japanese_theme, presence: true, length: { maximum: 255 }
  validates :japanese_score, length: {maximum: 3 }
  validates :math_theme, presence: true, length: { maximum: 255 }
  validates :math_score, length: {maximum: 3 }
  validates :science_theme, presence: true, length: { maximum: 255 }
  validates :science_score, length: {maximum: 3 }
  validates :social_theme, presence: true, length: { maximum: 255 }
  validates :social_score, length: {maximum: 3 }

end
