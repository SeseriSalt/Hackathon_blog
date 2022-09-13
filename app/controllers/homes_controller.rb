class HomesController < ApplicationController
  def index
    @blogs = Blog.all
  end
end
