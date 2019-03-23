class User < ApplicationRecord
  before_save { self.email.downcase! }
  
  mount_uploader :image_user, ImageUploader
  
  validates :name, presence: true, length: { maximum: 50 }
  enum sex: { male: 1, female: 2 }
  validates :age, numericality: { greater_than_or_equal_to: 18 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  
  
  has_many :reviews
end
