class TransactionsController < ApplicationController

  def new
    @transaction = Transaction.new
  end
  
  def index
    @transactions = current_user.transactions
  end

  def show
    @transaction = Transaction.find(params[:id])
  end
  
  def create
    @transaction = Transaction.new
    @transaction.user_id = current_user.id
    @stock = Stock.where(ticker: transaction_params[:ticker]).first_or_create
    @stock_info = StockQuote::Stock.quote(@stock.ticker)
    @transaction.price = @stock_info.latest_price
    @transaction.stock_id = @stock.id
    @transaction.num_shares = transaction_params[:num_shares]
    @transaction.order_type = transaction_params[:order_type]

    if @transaction.num_shares.zero?
      render json: ['Shares must be greater than 0'], status: 422
    else
      if @transaction.save
        render json: ['success'], status: 200
      else
        render json: @transaction.errors.full_messages, status: 422
      end
    end
  end

  private
    def transaction_params
      params.require(:transaction).permit(:user_id, :ticker, :price, :num_shares, :order_type)
    end
end
