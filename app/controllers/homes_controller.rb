class HomesController < ApplicationController
  def index
    @user = current_user
    @blogs = Blog.all
  end
  
  def fav_index
    @user = current_user
    @blogs = Blog.all
    @blogs_favo = @blogs.order('favo desc')
  end
  
end
