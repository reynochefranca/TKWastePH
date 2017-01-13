class RequestHistoryDetailsController < ApplicationController
  before_action :set_request_history_detail, only: [:show, :edit, :update, :destroy]

  # GET /request_history_details
  # GET /request_history_details.json
  def index
    @request_history_details = RequestHistoryDetail.all
  end

  # GET /request_history_details/1
  # GET /request_history_details/1.json
  def show
  end

  # GET /request_history_details/new
  def new
    @request_history_detail = RequestHistoryDetail.new
  end

  # GET /request_history_details/1/edit
  def edit
  end

  # POST /request_history_details
  # POST /request_history_details.json
  def create
    @request_history_detail = RequestHistoryDetail.new(request_history_detail_params)

    respond_to do |format|
      if @request_history_detail.save
        format.html { redirect_to @request_history_detail, notice: 'Request history detail was successfully created.' }
        format.json { render :show, status: :created, location: @request_history_detail }
      else
        format.html { render :new }
        format.json { render json: @request_history_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_history_details/1
  # PATCH/PUT /request_history_details/1.json
  def update
    respond_to do |format|
      if @request_history_detail.update(request_history_detail_params)
        format.html { redirect_to @request_history_detail, notice: 'Request history detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_history_detail }
      else
        format.html { render :edit }
        format.json { render json: @request_history_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_history_details/1
  # DELETE /request_history_details/1.json
  def destroy
    @request_history_detail.destroy
    respond_to do |format|
      format.html { redirect_to request_history_details_url, notice: 'Request history detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_history_detail
      @request_history_detail = RequestHistoryDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_history_detail_params
      params.require(:request_history_detail).permit(:request_history_id, :edi_user_id, :manifest_id, :fuctioction_number, :request_value, :result_status)
    end
end
