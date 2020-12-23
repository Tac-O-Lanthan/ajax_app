class PostsController < ApplicationController
  def index
    @posts = Post.all  # すべてのレコードを@postsに代入 変数名の複数形はレコードの項目が増えたため変更されており、あくまで可読性のため
  end

  def new
  end

  def create
    Post.create(content: params[:content])
  end
end