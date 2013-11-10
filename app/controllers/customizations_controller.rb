class CustomizationsController < ApplicationController
  before_action :set_customization, only: [:show, :edit, :update, :destroy]

  # GET /customizations
  def index
    @customizations = Customization.all
  end

  # GET /customizations/1
  def show
  end

  # GET /customizations/new
  def new
    @customization = Customization.new
    @product_id = params[:product_id]

    #just for testing
    @product_id = 1

  end

  # GET /customizations/1/edit
  def edit
  end

  # POST /customizations
  def create
    @customization = Customization.new(customization_params)

    #Rails.logger.info " Custom = #{params['customization']}"

    if @customization.save
      redirect_to @customization, notice: 'Customization was successfully created.'
    else
      render action: 'new'
    end
    
  end

  # PATCH/PUT /customizations/1
  def update
    if @customization.update(customization_params)
      redirect_to @customization, notice: 'Customization was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /customizations/1
  def destroy
    @customization.destroy
    redirect_to customizations_url, notice: 'Customization was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customization
      @customization = Customization.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def customization_params
      params.require(:customization).permit(:order_id, :product_id, :jacket_lapel, :jacket_button, :jacket_pocket, :jacket_lining, :jacket_monogram, :pant_type, :pant_length, :skirt_type, :skirt_length)
    end
end
