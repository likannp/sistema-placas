class PlacasController < ApplicationController

  def index
    @registros = Placa.all
  end

  def edit
  end

  def update
  end

  def new
    @placa = Placa.new
  end

  def create
    @placa = Placa.new(placa_params)
    @placa.save
    redirect_to placas_path
  end

  def destroy
    Placa.delete(params[:id])
    redirect_to placas_path
  end

  private

  def placa_params
    params.require(:placa).permit(:placa,:proprietario,:modelo,:ano)
  end
end