class AlbumsController < ApplicationController

  #before_filter :require_user, :only => :private

  

  def index
    #@albums = Album.all
    if current_user
    @albums=current_user.albums
    else
    flash[:notice] = "Please login to view album list."
    redirect_to login_path
    end
    
  end
  
  def show
    if current_user
    @album = Album.find(params[:id])
    else
    flash[:notice] = "Please login to view albums."
    redirect_to login_path
    end
  end
  
  def new
     if current_user
    @album = Album.new
    else
    flash[:notice] = "Please login to create new album."
    redirect_to login_path
    end
  end
  
  def create
    if current_user
    @album = Album.new(params[:album])
    @album.user=current_user
    if @album.save
      flash[:notice] = "Successfully created album."
      redirect_to @album
    else
      render :action => 'new'
    end
    else
    flash[:notice] = "Please login to create new albums."
    redirect_to login_path
    end
  end
  
  def edit
    if current_user
    @album = current_user.albums.find(params[:id])
    else
    flash[:notice] = "Please login to edit albums."
    redirect_to login_path
    end
  end
  
  def update
    if current_user
    @album = current_user.albums.find(params[:id])
    if @album.update_attributes(params[:album])
      flash[:notice] = "Successfully updated album."
      redirect_to @album
    else
      render :action => 'edit'
    end
    else
    flash[:notice] = "Please login to update albums."
    redirect_to login_path
    end
  end
  
  def destroy
    if current_user
    @album = current_user.albums.find(params[:id])
    @album.destroy
    flash[:notice] = "Successfully destroyed album."
    redirect_to albums_url
    else
    flash[:notice] = "Please login to view albums."
    redirect_to login_path
    end
    
  end
end
