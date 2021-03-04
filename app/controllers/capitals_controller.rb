class CapitalsController < ApplicationController
  before_action :set_capital, only: [:show, :update, :destroy]

  def index
    @capitals_data = Capital.all

    render_capitals
  end

  def show
    render json: @capital
  end

  def create
    @capitals_data = Capital.new(capital_params)

    if @capital.save
      render json: @capital, status: :created, location: @capital
    else
      render json: @capital.errors, status: :unprocessable_entity
    end
  end

  def update
    if @capital.update(capital_params)
      render json: @capital
    else
      render json: @capital.errors, status: :unprocessable_entity
    end
  end

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

    def render_capitals
      render json: CapitalsSerializer.new(@capitals_data).to_serialized_json
    end
end
