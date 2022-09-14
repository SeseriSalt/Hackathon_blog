class HomesController < ApplicationController
  def index
    @blogs = Blog.all
  end
  
  def fav_index
    @blogs = Blog.all
    @blogs_favo = @blogs.order('favo desc')
  end
  
end
