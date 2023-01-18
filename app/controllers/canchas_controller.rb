# frozen_string_literal: true

# Something
class CanchasController < ApplicationController
  def index
    if params[:busqueda_por_deporte]
      search_term = params[:busqueda_por_deporte].downcase

      @canchas = Cancha.all.select do |cancha|
        cancha.deporte.downcase.include?(search_term)
      end
        
    else
      @canchas = Cancha.all
    end
  end

  def show
    @cancha = Cancha.find(params[:id])
  end

  def new
  end

  def create
    @cancha = Cancha.new(cancha_params)
    @cancha.id_usuario = current_usuario.id
    if @cancha.save
      redirect_to canchas_path
    else
      render :new
    end
  end

  def edit
    @cancha = Cancha.find(params[:id])
  end

  def update
    @cancha = Cancha.find(params[:id])
    @cancha.update(cancha_params)
    @cancha.save
    redirect_to canchas_path
  end

  def destroy
    @cancha = Cancha.find(params[:id])
    @cancha.destroy
    redirect_to canchas_path
  end

  private

  def cancha_params
    params.require(:cancha).permit(:direccion, :descripcion, :deporte)
  end
end
