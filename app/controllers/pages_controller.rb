class PagesController < ApplicationController
  def home
    @posts = Post.published.paginate(:page => params[:page],
                                     :per_page => 5)
  end

  def show
    @commentable = @page = Page.find_by_slug(params[:slug])
  end
end
