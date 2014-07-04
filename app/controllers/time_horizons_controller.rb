class TimeHorizonsController < ApplicationController
  before_action :set_time_horizon, only: [:show, :edit, :update, :destroy]

  # GET /time_horizons
  # GET /time_horizons.json
  def index
    @time_horizons = TimeHorizon.all
  end

  # GET /time_horizons/1
  # GET /time_horizons/1.json
  def show
  end

  # GET /time_horizons/new
  def new
    @time_horizon = TimeHorizon.new
  end

  # GET /time_horizons/1/edit
  def edit
  end

  # POST /time_horizons
  # POST /time_horizons.json
  def create
    @time_horizon = TimeHorizon.new(time_horizon_params)

    respond_to do |format|
      if @time_horizon.save
        format.html { redirect_to @time_horizon, notice: 'Time horizon was successfully created.' }
        format.json { render :show, status: :created, location: @time_horizon }
      else
        format.html { render :new }
        format.json { render json: @time_horizon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_horizons/1
  # PATCH/PUT /time_horizons/1.json
  def update
    respond_to do |format|
      if @time_horizon.update(time_horizon_params)
        format.html { redirect_to @time_horizon, notice: 'Time horizon was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_horizon }
      else
        format.html { render :edit }
        format.json { render json: @time_horizon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_horizons/1
  # DELETE /time_horizons/1.json
  def destroy
    @time_horizon.destroy
    respond_to do |format|
      format.html { redirect_to time_horizons_url, notice: 'Time horizon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_horizon
      @time_horizon = TimeHorizon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_horizon_params
      params.require(:time_horizon).permit(:year_a, :year_b, :year_c, :year_d)
    end
end
