class HomesController < ApplicationController
  def index
    @blogs = Blog.all
  end
  
  def fav_index
    @blogs = Blog.all
  end
  
end
