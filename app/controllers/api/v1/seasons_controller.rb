class Api::V1::SeasonsController < ApplicationController
  def index
    render json: Season.all
  end
end
