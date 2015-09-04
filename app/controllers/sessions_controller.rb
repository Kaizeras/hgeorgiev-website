class SessionsController < Devise::SessionsController

   def new
     @posts = Post.all(:select => "id, title,  created_at", :order => "created_at DESC")
     @post_months = @posts.group_by { |t| t.created_at.beginning_of_year }
     super

  end
end
