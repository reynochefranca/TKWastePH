class Contracts::ContractProcesses::TradersController < ApplicationController
  def index
    if params[:search] && params[:search].present?
      @search = Trader.search(params[:search])
      @traders = @search
                          .select("traders.id, traders.name_kanji, traders.name_kana")
                          .where("traders.division is not null")
    else
      @search = Trader.search(params[:search])
      @traders = []
    end
  end
end
