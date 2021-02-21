class Book < ApplicationRecord

  belongs_to :user
  
  validates :title, presence: true # タイトルは空でない
  validates :body, presence: true, length: { maximum: 200 } # 内容は空でない、かつ最大200文字まで

end
