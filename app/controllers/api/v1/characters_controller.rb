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

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    render json: @character
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    render json: {message: "done"}
  end

private
  def character_params
    params.require(:character).permit(:name, :title, :social_class, :actor_id)
  end

end