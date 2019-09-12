class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      flash[:notice] = "Song was successfully created"
      redirect_to song_path(@song)
    else
      render 'new'
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def index
    @songs = Song.all
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(article_params)
      flash[:notice] = "Song was updated"
      redirect_to article_path(@song)
    else
      flash[:notice] = "Song was not updated"
      render 'edit'
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    flash[:notice] = 'Song was deleted'
    redirect_to songs_path
  end

  private
  def song_params
    params.require(:song).permit(:title, :club)
  end
end