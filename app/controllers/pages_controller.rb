class PagesController < ApplicationController
  def home
    @posts = Post.published
  end

  def show
    @commentable = @page = Page.find_by_slug(params[:slug])
  end
end
