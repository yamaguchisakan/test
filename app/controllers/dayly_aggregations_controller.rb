class DaylyAggregationsController < ApplicationController
  before_action :set_dayly_aggregation, only: [:show, :edit, :update, :destroy]

  # GET /dayly_aggregations
  # GET /dayly_aggregations.json
  def index
    @dayly_aggregations = DaylyAggregation.all
  end

  # GET /dayly_aggregations/1
  # GET /dayly_aggregations/1.json
  def show
  end

  # GET /dayly_aggregations/new
  def new
    @dayly_aggregation = DaylyAggregation.new
  end

  # GET /dayly_aggregations/1/edit
  def edit
  end

  # POST /dayly_aggregations
  # POST /dayly_aggregations.json
  def create
    @dayly_aggregation = DaylyAggregation.new(dayly_aggregation_params)

    respond_to do |format|
      if @dayly_aggregation.save
        format.html { redirect_to @dayly_aggregation, notice: 'Dayly aggregation was successfully created.' }
        format.json { render :show, status: :created, location: @dayly_aggregation }
      else
        format.html { render :new }
        format.json { render json: @dayly_aggregation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dayly_aggregations/1
  # PATCH/PUT /dayly_aggregations/1.json
  def update
    respond_to do |format|
      if @dayly_aggregation.update(dayly_aggregation_params)
        format.html { redirect_to @dayly_aggregation, notice: 'Dayly aggregation was successfully updated.' }
        format.json { render :show, status: :ok, location: @dayly_aggregation }
      else
        format.html { render :edit }
        format.json { render json: @dayly_aggregation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dayly_aggregations/1
  # DELETE /dayly_aggregations/1.json
  def destroy
    @dayly_aggregation.destroy
    respond_to do |format|
      format.html { redirect_to dayly_aggregations_url, notice: 'Dayly aggregation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dayly_aggregation
      @dayly_aggregation = DaylyAggregation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dayly_aggregation_params
      params.require(:dayly_aggregation).permit(:aggregation_day, :avg_interval, :avg_number, :avg_price, :account_id)
    end
end
