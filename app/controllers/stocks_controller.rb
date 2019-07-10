class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /stocks
  # GET /stocks.json
  def index
    @stocks = Stock.all
  end
  
  def show
    @stock = Stock.find_by(ticker: params[:ticker])
  end
end
