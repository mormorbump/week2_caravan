class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
    # newというのは、モデルに基づいた空の箱を作っている。インスタンスという。
    # @blogは変数。ただの名前。
    # @つけると、対応するviewに渡せる。
  end

  def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_to '/blogs'
  end

  def show
    @blog = Blog.find(params[:id])
    # findメソッドは数字と一致するidのデータを一軒持ってくるメソッド。
    # params[:カラム名]とやることで、その値が取得できる。
  end

  private

    def blog_params
      params.require(:blog).permit(:title, :body, :category)
      # ストロングパラメータとは、不正なデータが送信されるのを防ぐ機能
    end
end
