class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    @post.update(post_params)
    if @post.valid?
      redirect_to post_path(@post)
    else
      render :edit
    end      
  end

  # Solution update method for future ref
  
  # def update
  #   @post = Post.find(params[:id])

  #   if @post.update(post_params)
  #     redirect_to post_path(@post)
  #   else
  #     render :edit
  #   end
  # end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
