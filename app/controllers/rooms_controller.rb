class RoomsController < ApplicationController
  
  def index
  end
  
  def new
    @room = Room.new
  end #空のルームインスタンスを@roomに代入

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end #うまく行ったらルーとパスに遷移し、そうでないなら戻るように条件分岐してる
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids:[])
  end

end
