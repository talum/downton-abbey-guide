class EpisodesController < ApplicationController
  def index
    render json: Episode.all
  end

  def show 
    @episode = Episode.find(params[:id])
    render json: @episode
  end

  def update
    @episode = Episode.find(params[:id])
    @episode.update(episode_params)
    render json: @episode
  end

private 
  def episode_params
    params.require(:episode).permit(:name, :summary, :image_url)
  end
end
