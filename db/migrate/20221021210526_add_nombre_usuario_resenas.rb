# frozen_string_literal: true

class AddNombreUsuarioResenas < ActiveRecord::Migration[6.0]
  def change
    add_column :resenas, :nombre_usuario, :string
  end
end
