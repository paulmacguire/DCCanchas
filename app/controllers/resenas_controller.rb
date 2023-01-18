# frozen_string_literal: true

# Something
class ResenasController < ApplicationController
  before_action :authenticate_usuario!

  def index
    @resenas = Resena.all
  end

  def new
    @cancha = Cancha.find(params[:cancha_id])
  end

  def show
    @resena = Resena.find(params[:id])
  end

  def create
    @cancha = Cancha.find(params[:cancha_id])
    @resena = Resena.new(resena_params)
    @resena.nombre_usuario = current_usuario.nombre
    @resena.cancha_id = @cancha.id
    @resena.usuario_id = current_usuario.id
    if @resena.save
      redirect_to cancha_path(@cancha)
    else
      render :new
    end
  end

  def edit
    @resena = Resena.find(params[:id])
  end

  def update
    @resena = Resena.find(params[:id])
    @resena.update(resena_params)
    @resena.save
    redirect_to cancha_path(@resena.cancha_id)
  end

  def destroy
    @resena = Resena.find(params[:id])
    @resena.destroy
    redirect_to cancha_path(@resena.cancha_id)
  end

  private

  def resena_params
    params.require(:resena).permit(:calificacion, :contenido)
  end
end
