# frozen_string_literal: true

class AddTipoUsuariotoUsuario < ActiveRecord::Migration[6.0]
  def change
    add_column :usuarios, :tipo_usuario, :string
  end
end
