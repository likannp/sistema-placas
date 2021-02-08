class PlacasController < ApplicationController

  def index
    @registros = Placa.all
  end

  def edit
    @placa = Placa.find(params[:id])
  end

  def update
    @placa = Placa.find(params[:id])
    @placa.update(placa_params)
    redirect_to placas_path
  end

  def new
    @placa = Placa.new
  end

  def create
    @placa = Placa.new(placa_params)
    if @placa.save
      redirect_to placas_path
    else
      flash.now[:alert] = "Todos campos devem ser preenchidos corretamente"
      render(:new)
    end
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