class VideosController < ApplicationController

  def show
    id = params[:id]
    @video = Video.find(id)
  end

  def show_all
    @videos = Video.all
  end

  def new
  	@video = Video.new
  end
end