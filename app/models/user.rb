class User < ApplicationRecord
  before_save { self.email.downcase! }
  validates :parent_name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  validates :child_name, presence: true, length: { maximum: 50 }
  validates :passing_score,presence: true, length: { maximum: 3 }
  validates :failing_score,presence: true, length: { maximum: 3 }
  has_secure_password
  
  has_many :tests
  
end
