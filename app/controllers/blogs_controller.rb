class BlogsController < ApplicationController
  def index
  end
  
  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = current_user.blogs.build
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = current_user.blogs.build(blog_params)
    if @blog.save
      redirect_to user_profile_url(@blog.user.id)
    else
      render 'new'
    end
  end
  
  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to @blog
    else
      render 'edit'
    end
  end

  def destroy
    Blog.find(params[:id]).destroy
    redirect_to root_url
  end
  
  private

    def blog_params
      params.require(:blog).permit(:content)
    end
end
