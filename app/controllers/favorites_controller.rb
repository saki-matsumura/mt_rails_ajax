class FavoritesController < ApplicationController

  def create
    @favorite = current_user.favorites.create(blog_id: params[:blog_id])
    respond_to do |format|
      format.js { render 'blogs/favorite' }
    end
  end

  def destroy
    @favorite = current_user.favorites.find_by(id: params[:id]).destroy
    respond_to do |format|
      format.js { render 'blogs/favorite' }
    end
  end

end
