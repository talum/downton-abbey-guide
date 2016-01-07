class Api::V1::SeasonsController < ApplicationController
  def index
    render json: Season.all.order(name: :asc)
  end

  def show
  @season = Season.find(params[:id])
  render json: @season 
  end

  def update
    @season = Season.find(params[:id])
    @season.update(season_params)
    render json: @season
  end

private
  def season_params
    params.require(:season).permit(:summary, :time_period, :name, :image_url)
  end
end
