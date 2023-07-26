class BandasController < ApplicationController
  before_action :set_banda, only: [:show, :update, :destroy]

  def index
    @bandas = Banda.all
    render json: @bandas
  end

  def show
    render json: @banda
  end

  def create
    @banda = Banda.new(banda_params)

    if @banda.save
      render json: @banda, status: :created
    else
      render json: @banda.errors, status: :bad_request
    end
  end

  def update
    if @banda.update(banda_params)
      render json: @banda
    else
      render json: @banda.errors, status: :bad_request
    end
  end

  def destroy
    @banda.destroy
    head :no_content
  end

  private

  def set_banda
    @banda = Banda.find(params[:id])
  end

  def banda_params
    params.require(:banda).permit(:name)
  end
end
