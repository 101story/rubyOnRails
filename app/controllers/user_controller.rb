class UserController < ApplicationController
    
    def index 
        @users = User.all
        if session[:user_id]
            @email = User.find(session[:user_id]).email
        end
    end
    
    def new 
    end
    
    def create 
        require 'digest'
        @email = params[:email]
        @password = params[:password]
        
        encrypted_password = Digest::MD5.hexdigest(@password)
        
        User.create(
            email:@email,
            password:encrypted_password
        )
    end
        
    def modify
        @id = params[:id]
        @user = User.find(@id)
    end
    
    def update
        @id = params[:id]
        @email = params[:email]
        @password = params[:password]
        
        user = User.find(@id)
        
        user.update(
            email:@email,
            password:@password
        )
        
        redirect_to '/user/userlist'
    end
    
    def destroy
        
        @id = params[:id]
        user = User.find(@id)
        
        user.destroy
        
        redirect_to '/user/index'
    end
    
    def login
    end
    
    def login_process
        require 'digest'
        @email = params[:email]
        @password = params[:password]
        
        encrypted_password = Digest::MD5.hexdigest(@password)
        
        if User.exists?(email: @email) 
            user = User.find_by(email: @email)
            if user.password == encrypted_password
                session[:user_id] = user.id
                redirect_to '/user/index'
            end
        end 
    end

    def logout
        session.clear
        #session.delete(key)
        redirect_to '/user/index'
    end

#class end
end
