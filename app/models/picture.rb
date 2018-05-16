class Picture < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorites_users, through: :favorites, source: :user

  validates :image, presence: true
  validates :content, presence: true, length: { maximum: 255 }

  mount_uploader :image, ImageUploader
end

# 順番
# accessor関連
# アソシエーション
# バリデーション
# scope
# 外部ライブラリのクラスメソッド
# コールバック
# クラスメソッド
# インスタンスメソッド