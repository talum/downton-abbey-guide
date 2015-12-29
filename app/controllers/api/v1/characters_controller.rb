class Api::V1::CharactersController < ApplicationController
  def index
    render json: Character.all
  end

  def show
    @character = Character.find(params[:id])
    render json: @character
  end

  def create
    @character = Character.create(character_params)
    render json: @character
  end

private
  def character_params
    params.require(:character).permit(:name, :title)
  end

end