class AskedController < ApplicationController
  def index
    @asked = Asked.all
  end

  def show
    @content = params[:content]
    @username = params[:username] 
    
    Asked.create(
      name: @username,
      content: @content    
    )
    
    redirect_to :back # 이전으로 돌아 가기 
    
  end
  
  def sign_up
    
  end
  
  def sign_up_process
    @email = params[:email]
    @name = params[:name]
    @password = params[:password]
    
    AskUser.create(
      email:@email,
      name:@name,
      password:@password
    )
  end
  
  def sign_in
    
  end
  
  def sign_in_process
    email = params[:email]
    password = params[:password]
    @message = ""
    
    user = AskUser.find_by(email: email)
    if user
      if user.password == password
          session[:user_id] = user.id
          redirect_to '/asked/index'
      else 
        @message = "비밀번호가 잘못되었습니다."
      end
    else
      @message = "없는 사용자 입니다. "
    end
  end
  
  def logout
    session.clear
    redirect_to '/asked/index'
  end
  
end
