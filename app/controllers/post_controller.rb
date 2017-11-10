class PostController < ApplicationController

    
    def index 
        @posts = Post.all
    end
    
    def create
        #erb:create 생략되어 있음 
        @title = params[:title]
        @content = params[:content]
        
        Post.create(
            title:@title,
            content:@content
        )
    end
    
    def show
        @id = params[:id]
        @post = Post.find(@id)
        # @title = @post.title
        # @content = @post.content
    end
    
    def modify
        @id = params[:id]
        @post = Post.find(@id)
    end
    
    def update
        @id = params[:id]
        @title = params[:title]
        @content = params[:content]
        post = Post.find(@id)
        post.update(
            title:@title,
            content:@content
        )
        
        redirect_to '/post/postlist'
    end
    
    def destroy
        # 지울 글을 찾는다. 
        @id = params[:id]
        post = Post.find(@id)
        # 글을 지운다. 
        post.destroy
        
        redirect_to '/post/postlist'
    end
    
end
