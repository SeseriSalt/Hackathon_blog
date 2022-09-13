class BlogsController < ApplicationController
  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = current_user.blogs.build
  end

  def edit
    @blog = current_user.blogs.find(params[:id])
  end

  def create
    @blog = current_user.blogs.build(blog_params)
    if @blog.save
      redirect_to user_profile_url(@blog.user.id)
    else
      render 'blogs/new'
    end
  end

  def destroy
  end
  
  private

    def blog_params
      params.require(:blog).permit(:content)
    end
end
