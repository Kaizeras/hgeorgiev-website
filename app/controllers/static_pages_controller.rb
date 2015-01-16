class StaticPagesController < ApplicationController
before_filter :set_nav
      layout 'about' , :only => [:about]
  def about

  end

  def welcome

  end
private 
  def set_nav
   @post = Post.last
  end
end
