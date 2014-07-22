class StaticPagesController < ApplicationController
  def index
       @posts = Post.order('created_at DESC')
  end
  
  def about
    
  end
end
