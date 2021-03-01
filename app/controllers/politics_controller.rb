class PoliticsController < ApplicationController
  before_action :set_politic, only: [:show, :update, :destroy]

  # GET /politics
  def index
    @politics_data = Politic.all

    render_politics
  end

  # GET /politics/1
  def show
    render json: @politic
  end

  # POST /politics
  def create
    @politics_data = Politic.new(politic_params)

    if @politic.save
      render json: @politic, status: :created, location: @politic
    else
      render json: @politic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /politics/1
  def update
    if @politic.update(politic_params)
      render json: @politic
    else
      render json: @politic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /politics/1
  def destroy
    @politic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_politic
      @politic = Politic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def politic_params
      params.require(:politic).permit(:governor, :senator, :congressmen, :flag, :electoral)
    end

    def render_politics
      render json: PoliticsSerializer.new(@politics_data).to_serialized_json
    end
end
