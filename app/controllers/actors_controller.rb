class ActorsController < ApplicationController

  def index
    render json: Actor.all
  end

  def create
    @actor = Actor.create(actor_params)
    render json: @actor
  end

private
  def actor_params
    params.require(:actor).permit(:name, :image_url, :imdb_link)
  end

end