class UsersController < ApplicationController
 
 def edit
 end
 
 def update
  if current_user.update(user_params)
    redirect_to root_path
  else 
    render :edit
  end   #ログインに成功した場合チャット画面にリダイレクト
 end    #失敗した場合editページに戻る

 private

 def user_params
   params.require(:user).permit(:name, :email)
 end
end
