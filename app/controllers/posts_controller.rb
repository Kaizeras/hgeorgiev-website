class PostsController < ApplicationController
 

 layout 'show' , :only => [:show]

  def index
    @posts = Post.all.order("created_at DESC")

  end


  
  def show
    @post = Post.friendly.find(params[:id])
  end





end

  

