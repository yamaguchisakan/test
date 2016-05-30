class SmokingsController < ApplicationController
  before_action :set_smoking, only: [:show, :edit, :update, :destroy]

  # GET /smokings
  # GET /smokings.json
  def index
    @smokings = Smoking.all
  end

  # GET /smokings/1
  # GET /smokings/1.json
  def show
  end

  # GET /smokings/new
  def new
    @smoking = Smoking.new
  end

  # GET /smokings/1/edit
  def edit
  end

  # POST /smokings
  # POST /smokings.json
  def create
    @smoking = Smoking.new(smoking_params)

    respond_to do |format|
      if @smoking.save
        format.html { redirect_to @smoking, notice: 'Smoking was successfully created.' }
        format.json { render :show, status: :created, location: @smoking }
      else
        format.html { render :new }
        format.json { render json: @smoking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smokings/1
  # PATCH/PUT /smokings/1.json
  def update
    respond_to do |format|
      if @smoking.update(smoking_params)
        format.html { redirect_to @smoking, notice: 'Smoking was successfully updated.' }
        format.json { render :show, status: :ok, location: @smoking }
      else
        format.html { render :edit }
        format.json { render json: @smoking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smokings/1
  # DELETE /smokings/1.json
  def destroy
    @smoking.destroy
    respond_to do |format|
      format.html { redirect_to smokings_url, notice: 'Smoking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smoking
      @smoking = Smoking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smoking_params
      params.require(:smoking).permit(:smoke_date, :smoke_time, :smoke_interval, :latitude, :longitude, :tobacco_id)
    end
end
