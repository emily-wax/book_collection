class PostsController < ApplicationController

  before_action :set_post, only: %i[ show edit update destroy]

  def index
    @posts = Post.all
    @reviewed_posts = Post.reviewed
    @unreviewed_posts = Post.reviewed

    @posts.count > 0 ? @nummessage=@posts.count : @nummessage=0
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
  end
end
