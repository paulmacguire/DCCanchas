# frozen_string_literal: true

# Something
class ReservasController < ApplicationController
  before_action :authenticate_usuario!
  def index
    @reservas = Reserva.all
  end

  def new
    @cancha = Cancha.find(params[:cancha_id])
  end

  def show
    @reserva = Reserva.find(params[:id])
  end

  def edit
    @reserva = Reserva.find(params[:id])
    
  end

  def create
    @cancha = Cancha.find(params[:cancha_id])
    @reserva = Reserva.new(reserva_params)
    @reserva.nombre_usuario = current_usuario.nombre
    @reserva.cancha_id = @cancha.id
    @reserva.usuario_id = current_usuario.id
    @reserva.estado = "Pendiente"
    if @reserva.save
      redirect_to cancha_path(@cancha)
    else
      render :new
    end
  end

  def update
    @reserva = Reserva.find(params[:id])
    @reserva.estado = "Pendiente"
    @reserva.update(reserva_params)
    @reserva.save
    redirect_to reserva_path
  end


  def destroy
    @reserva = Reserva.find(params[:id])
    @reserva.destroy
    redirect_to reservas_path
  end

  private

  def reserva_params
    params.require(:reserva).permit(:fecha, :hora_inicio, :deporte_reserva,:nombre_usuario,:estado, equipamiento:[])
  end
end
