# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Usuario, type: :request do
  before(:all) do
    @usuario = create(:usuario)
    sign_in @usuario
    @reserva = create(:reserva)
  end

  describe 'delete' do
    it 'deberia disminuir en 1 la cantidad de usuarios' do
      expect do
        delete usuarios_delete_path(id_usuario: @usuario.id, reserva_id: @reserva.id)
      end.to change(Usuario, :count).by(-1)
    end
  end
end