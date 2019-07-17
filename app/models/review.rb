class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product
  
  validates :product, presence: true
  validates :point, presence: true
  validates :content, presence: true
  validates :user,
    uniqueness: {
      scope: [:product],
      message: "はこの商品の口コミをすでに投稿しています。"
    }
    
    
  has_many :likes, dependent: :destroy

end
