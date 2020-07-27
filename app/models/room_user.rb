class RoomUser < ApplicationRecord
  belongs_to :room
  belongs_to :user
end #二つのテーブルを関係付ける記述
