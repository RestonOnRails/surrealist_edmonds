class LotteryInfosController < ApplicationController
  before_action :set_lottery_info, only: [:show, :edit, :update, :destroy]

  # GET /lottery_infos
  # GET /lottery_infos.json
  def index
    @lottery_infos = LotteryInfo.all
  end

  # GET /lottery_infos/1
  # GET /lottery_infos/1.json
  def show
  end

  # GET /lottery_infos/new
  def new
    @lottery_info = LotteryInfo.new
  end

  # GET /lottery_infos/1/edit
  def edit
  end

  # POST /lottery_infos
  # POST /lottery_infos.json
  def create
    @lottery_info = LotteryInfo.new(lottery_info_params)

    respond_to do |format|
      if @lottery_info.save
        format.html { redirect_to @lottery_info, notice: 'Lottery info was successfully created.' }
        format.json { render :show, status: :created, location: @lottery_info }
      else
        format.html { render :new }
        format.json { render json: @lottery_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lottery_infos/1
  # PATCH/PUT /lottery_infos/1.json
  def update
    respond_to do |format|
      if @lottery_info.update(lottery_info_params)
        format.html { redirect_to @lottery_info, notice: 'Lottery info was successfully updated.' }
        format.json { render :show, status: :ok, location: @lottery_info }
      else
        format.html { render :edit }
        format.json { render json: @lottery_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lottery_infos/1
  # DELETE /lottery_infos/1.json
  def destroy
    @lottery_info.destroy
    respond_to do |format|
      format.html { redirect_to lottery_infos_url, notice: 'Lottery info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lottery_info
      @lottery_info = LotteryInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lottery_info_params
      params.require(:lottery_info).permit(:user_id, :store, :lottery_type, :lottery_date, :purchase_cost, :lottery_number)
    end
end
