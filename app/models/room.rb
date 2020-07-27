class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users

  validates :names, presence: true
end   #ルームが存在している場合だけ作成可能と設定を設けている
