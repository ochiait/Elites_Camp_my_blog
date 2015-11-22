class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(item_params)
     # 上の行はインスタンスを作っただけ。saveメソッドで保存しないと、消える。
    @post.save
    redirect_to "/posts/#{@post.id}"
  end
end
