class MeasurementsController < ApplicationController
  before_action :set_measurement, only: [:show, :edit, :update, :destroy]

  # GET /measurements
  def index
    @measurements = Measurement.all
  end

  # GET /measurements/1
  def show
  end

  # GET /measurements/new
  def new
    @measurement = Measurement.new
  end

  # GET /measurements/1/edit
  def edit
  end

  # POST /measurements
  def create
    @measurement = Measurement.new(measurement_params)

    if @measurement.save
      redirect_to @measurement, notice: 'Measurement was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /measurements/1
  def update
    if @measurement.update(measurement_params)
      redirect_to @measurement, notice: 'Measurement was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /measurements/1
  def destroy
    @measurement.destroy
    redirect_to measurements_url, notice: 'Measurement was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurement
      @measurement = Measurement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def measurement_params
      params.require(:measurement).permit(:user_id, :height, :neck, :shoulder_to_shoulder, :shoulder_right, :shoulder_left, :bicep, :arm_length_right, :arm_length_left, :wrist, :torso_length, :chest, :nip_to_nip, :stomach, :waist, :hip, :waist_to_knee, :leg_right, :leg_left, :crotch, :thigh, :knee, :shoulder_type, :chest_type, :stomach_type, :posture_type, :seat_type)
    end
end
