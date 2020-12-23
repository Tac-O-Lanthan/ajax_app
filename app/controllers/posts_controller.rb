class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
    # すべてのレコードを@postsに代入 変数名の複数形はレコードの項目が増えたため変更されており、あくまで可読性のため
  end

  def checked
    post = Post.find(params[:id])
    if post.checked 
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end

  def create
    Post.create(content: params[:content])
  end
end