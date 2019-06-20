class HomeController < ApplicationController
  def index
    if params[:ticker] == ""
      @nothing = "Hey! Your forgot to enter a symbol"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      if !@stock
          @error = "Hey! That stock symbol doesn't exist"
      end
    end
  end

  def about
  end
end
