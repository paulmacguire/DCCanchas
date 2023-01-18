# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsuariosController, type: :controller do
  context 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_success
    end
  end

  context 'GET #show' do
    it 'returns a success response' do
      usuario = Usuario.create!(nombre: 'abcdefg',imagen_perfil: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.elmundo.es%2Fdeportes%2Ffutbol%2Feurocopa%2F2021%2F06%2F24%2F60d4c142fdddff697b8b4630.html&psig=AOvVaw18YZsC49OoQYrlAJTDCAZ7&ust=1666384376116000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCNiDkNjT7_oCFQAAAAAdAAAAABAE', telefono: '987654321', email: 'abc@gmail.com',password: '123123', password_confirmation: '123123', tipo_usuario: 'Jugador')
      get :show, params: { id: usuario.to_param }
      expect(response).to be_success
    end
  end
end
