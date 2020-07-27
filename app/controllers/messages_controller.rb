class MessagesController < ApplicationController
  def index
    @message = Message.new
    @room = Room.find(params[:room_id])
    @messages = @room.messages.includes(:user)  #一覧画面でメッセージ情報を取得する設定
  end
  
  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if  @message.save
      redirect_to room_messages_path(@room)
    else
      render :index
    end
      # 保存できた場合とできない場合indexアクションが実行される処理を分岐している
  end 
  # @roomからidを取得しそれを@messageで呼び出し保存している
  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end

end
