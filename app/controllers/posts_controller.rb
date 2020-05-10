
class PostsController < ApplicationController
  
 
  # except: [:index, :show]  이건 제외
  def index
    @post = Post.all
  end
  
  def new
  end

  def create
    @post = Post.new
    
    @post.title = params[:title]
    @post.story = params[:story]
    @post.user_id = current_user.id
    @post.user_email = current_user.email
    @post.save
    
    redirect_to "/posts/index"
  end
  def edit
    @post = Post.find(params[:id])
  end
 
  
  def update
    @post = Post.find(params[:id])
    
    @post.title = params[:title]
    @post.story = params[:story]
    
    @post.save
    
    redirect_to "/posts/index"
  end
  
  def destroy
    @post = Post.find(params[:id])
    
    @post.destroy
    
    redirect_to "/posts/index"
  end
  
  def show
     @post = Post.find(params[:id])
  end
  
  
  
  def mypost 
    
  end 
end
