class PostsController < ApplicationController
 before_filter :set_archive

 layout 'show' , :only => [:show]

  def index
    if params[:tag]
      @posts = Post.tagged_with(params[:tag])
    else
      @posts = Post.all.order("created_at DESC")
    end
  end



  def show
    @post = Post.friendly.find(params[:id])
  end


private
  def set_archive
    @posts = Post.all(:select => "id, title,  created_at", :order => "created_at DESC")
    @post_months = @posts.group_by { |t| t.created_at.beginning_of_year }
  end


end
