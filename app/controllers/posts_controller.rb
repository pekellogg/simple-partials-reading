class PostsController < ApplicationController
  # posts
  #   t.string   "title"
  #   t.text     "description"
  #   t.datetime "created_at",  null: false
  #   t.datetime "updated_at",  null: false
  #   t.integer  "author_id"
  
  # routes
  # resources :posts

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @author = @post.author
  end

  def new
    @post = Post.new
  end

  def create
    @author = Author.first
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.author_id = @author.id
    @post.save
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(title: params[:title], description: params[:description])
    redirect_to post_path(@post)
  end
  
end