class TradersController < ApplicationController
  before_action :set_trader, only: [:show, :edit, :update, :destroy]

  # GET /traders
  # GET /traders.json
  def index
    @traders = Trader.all
  end

  # GET /traders/1
  # GET /traders/1.json
  def show
  end

  # GET /traders/new
  def new
    @trader = Trader.new
  end

  # GET /traders/1/edit
  def edit
  end

  # POST /traders
  # POST /traders.json
  def create
    @trader = Trader.new(trader_params)

    respond_to do |format|
      if @trader.save
        format.html { redirect_to @trader, notice: 'Trader was successfully created.' }
        format.json { render :show, status: :created, location: @trader }
      else
        format.html { render :new }
        format.json { render json: @trader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /traders/1
  # PATCH/PUT /traders/1.json
  def update
    respond_to do |format|
      if @trader.update(trader_params)
        format.html { redirect_to @trader, notice: 'Trader was successfully updated.' }
        format.json { render :show, status: :ok, location: @trader }
      else
        format.html { render :edit }
        format.json { render json: @trader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traders/1
  # DELETE /traders/1.json
  def destroy
    @trader.destroy
    respond_to do |format|
      format.html { redirect_to traders_url, notice: 'Trader was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trader
      @trader = Trader.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trader_params
      params.require(:trader).permit(:name)
    end
end
