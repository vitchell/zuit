class SuitsController < ApplicationController
  before_action :set_suit, only: [:show, :edit, :update, :destroy]

  # GET /suits
  def index
    @suits = Suit.all
  end

  # GET /suits/1
  def show
  end

  # GET /suits/new
  def new
    @suit = Suit.new
  end

  # GET /suits/1/edit
  def edit
  end

  # POST /suits
  def create
    @suit = Suit.new(suit_params)

    if @suit.save
      redirect_to @suit, notice: 'Suit was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /suits/1
  def update
    if @suit.update(suit_params)
      redirect_to @suit, notice: 'Suit was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /suits/1
  def destroy
    @suit.destroy
    redirect_to suits_url, notice: 'Suit was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suit
      @suit = Suit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def suit_params
      params.require(:suit).permit(:suit_type, :suit_image)
    end
end
