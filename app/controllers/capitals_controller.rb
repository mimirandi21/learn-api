class CapitalsController < ApplicationController
  before_action :set_capital, only: [:show, :update, :destroy]

  # GET /capitals
  def index
    @capitals_data = Capital.all

    render_capitals
  end

  # GET /capitals/1
  def show
    render json: @capital
  end

  # POST /capitals
  def create
    @capitals_data = Capital.new(capital_params)

    if @capital.save
      render json: @capital, status: :created, location: @capital
    else
      render json: @capital.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /politics/1
  def update
    if @capital.update(capital_params)
      render json: @capital
    else
      render json: @capital.errors, status: :unprocessable_entity
    end
  end

  # DELETE /politics/1
  def destroy
    @capital.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capital
      @capital = Gapital.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def capital_params
      params.require(:capital).permit(:abbr, :usstate, :capital)
    end

    # use serializer to format data to send to front end
    def render_capitals
      render json: CapitalsSerializer.new(@capitals_data).to_serialized_json
    end
end
