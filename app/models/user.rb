class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, # パスワードの正確性を検証
         :registerable, # ユーザー登録や編集、削除
         :recoverable, # パスワードをリセット
         :rememberable, # ログイン情報を保存
         :validatable # emailのフォーマットのバリデーション

  has_many :books, dependent: :destroy
  attachment :profile_image

  validates :name, presence: true, uniqueness: true, length: { minimum: 2, maximum: 20 } # 名前は一意性を持たせ、かつ2～20文字の範囲
  # validates :introduction, length: { maximum: 50 } # introduction：最大50文字まで


end
