class RoomsController < ApplicationController
  def new
    @room = Room.new
  end #空のルームインスタンスを@roomに代入
end
