class TradersController < ApplicationController
  def index
    # If no search params, default to empty search
    if params[:q] && params[:q].reject { |k, v| v.blank? }.present?
      @search_traders = Trader.search(params[:q])
      @traders = @search_traders.result  
    else
      @search_traders = Trader.search
      @traders = []  
    end
  end
end
