class Api::V1::QuotesController < ApplicationController
  def index
    render json: Quote.all
  end

  def show
    @quote = Quote.find(params[:id])
    render json: @quote
  end

  def create
    @quote = Quote.create(quote_params)
    render json: @quote
  end

private
  def quote_params
    params.require(:quote).permit(:description, :character_id, :episode_id)
  end
end