# frozen_string_literal: true

# Something
class UsuariosController < ApplicationController
  def index
    @usuarios = Usuario.all
  end

  def show
    @usuario = Usuario.find(params[:id])
  end

  def new; end

  def create
    @usuario = Usuario.create(usuario_params)
    redirect_to usuarios_path
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end

  def update
    @usuario = Usuario.find(params[:id])
    @usuario.update(usuario_params)
    @usuario.save
    redirect_to usuarios_path
  end

  def destroy
    @usuario = Usuario.find(params[:id])
    @usuario.destroy
    redirect_to usuarios_path
  end

  private

  def usuario_params
    params.require(:usuario).permit(:nombre, :imagen_perfil, :correo, :telefono, :contrasena,
                                    :tipo_usuario)
  end
end
