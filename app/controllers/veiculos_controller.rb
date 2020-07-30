class VeiculosController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_veiculo, only: [:show, :update, :destroy]

  # Ge all veiculo
  def index
    @veiculos = Veiculo.all
    response_api(@veiculos)
  end

  # Get one veiculo
  def show
    response_api(@veiculo)
  end

  # Save veiculo
  def create
    @veiculo = Veiculo.create!( veiculo_params )
    response_api(@veiculo, :created)
  end

  # Update veiculo
  def update
    @veiculo.update(veiculo_params)
    response_api({ message: "Veículo modificado" });
  end

  # Delete veiculo 
  def destroy
    @veiculo.destroy
    response_api({ message: "Veículo removido" });
  end

  private

  # Params
  # marca
  def veiculo_params
    params.permit(:marca, :veiculo, :ano, :descricao, :vendido)
  end

  # Set veiculo
  def set_veiculo
    @veiculo = Veiculo.find( params[:id] )
  end

end
