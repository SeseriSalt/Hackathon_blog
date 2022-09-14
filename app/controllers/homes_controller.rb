class HomesController < ApplicationController
  def index
    @user = current_user
    @blogs = Blog.all
  end
  
  def tag_index
    @blogs_search = Blog.search(params[:search])
    @search = params[:search]
  end
  
  def fav_tag_index
    @blogs_search = Blog.search(params[:search])
    @blogs_favo_search = @blogs_search.order('favo desc')
    @search = params[:search]
  end
  
  def fav_index
    @user = current_user
    @blogs = Blog.all
    @blogs_favo = @blogs.order('favo desc')
  end
  
end
