class User < ApplicationRecord
  before_save { self.email.downcase! }
  
  mount_uploader :image_user, ImagesUploader
  
  validates :name, presence: true, length: { maximum: 50 }
  enum sex: { male: 1, female: 2 }
  validates :age, numericality: { greater_than_or_equal_to: 18 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false,message: "すでに登録されています。" }
  has_secure_password
  
  has_many :reviews
  
  has_many :likes, dependent: :destroy
  has_many :like_reviews, through: :likes, source: :review
  
  def like(review)
    self.likes.find_or_create_by(review_id: review.id)
  end

  def unlike(review)
    like = self.likes.find_by(review_id: review.id)
    like.destroy if like
  end
  
  def like_review?(review)
    self.like_reviews.include?(review)
  end

end
