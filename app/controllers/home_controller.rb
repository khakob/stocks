class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_16a849fd637243a79fff90fa4d42bc5d')
    if params[:ticker] == ""
      @nothing = "Hey! Your forgot to enter a symbol"
    elsif params[:ticker]
      begin
        @quote = StockQuote::Stock.quote(params[:ticker])
        @stats = StockQuote::Stock.stats(params[:ticker])
      rescue => e
        @error ="Hey! That Stock Symbol Doesn't Exist. Please Try Again."
  		end
    end
  end

  def about
  end
end
