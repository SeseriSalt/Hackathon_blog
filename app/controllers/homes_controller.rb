class HomesController < ApplicationController
  def index
    @user = current_user
    @blogs = Blog.all
  end
  
  def tag_index
    @blogs_search = Blog.search(params[:search])
    @search = params[:search]
  end
  
  def fav_index
    @user = current_user
    @blogs = Blog.all
    @blogs_favo = @blogs.order('favo desc')
  end
  
end
