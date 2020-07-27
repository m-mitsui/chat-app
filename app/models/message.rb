class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_one_attached :image

  validates :content, presence: true

  def was_attached?
    self.image.attached?
  end
  #テキストがなくても画像の投稿ができるようになっている
end
