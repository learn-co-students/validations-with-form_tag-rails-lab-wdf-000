class PostsController < ApplicationController
  
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  # def create
  #   @post = Post.new(post_params)

  #   if @person.valid?
  #     @person.save
  #     redirect_to post_path(@post)
  #   else
  #     render :new
    # make a new Post object given the params

    # check if the object is valid / will it save?
      # if it saves, ** redirect ** to #show

      # else
        # ** render ** the form and display the errors
  #   end
  # end


  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
