class GeneralsController < ApplicationController
  before_action :set_general, only: [:show, :update, :destroy]

  # GET /politics
  def index
    @general_data = General.all

    render_generals
  end

  # GET /generals/1
  def show
    render json: @general
  end

  # POST /generals
  def create
    @general_data = General.new(general_params)

    if @general.save
      render json: @general, status: :created, location: @general
    else
      render json: @general.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /generals/1
  def update
    if @general.update(general_params)
      render json: @general
    else
      render json: @general.errors, status: :unprocessable_entity
    end
  end

  # DELETE /generals/1
  def destroy
    @general.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general
      @general = General.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def general_params
      params.require(:general).permit(:abbr, :year, :order, :motto, :nickname, :population, :poprank, :size, :sizerank, :largestcity, :bird, :birdimg, :flower, :flowerimg, :tree, :treeimg)
    end

    # use serializer to format data to send to front end
    def render_generals
      render json: GeneralsSerializer.new(@general_data).to_serialized_json
    end
end