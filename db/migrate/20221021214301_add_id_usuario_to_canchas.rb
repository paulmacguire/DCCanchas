# frozen_string_literal: true

class AddIdUsuarioToCanchas < ActiveRecord::Migration[6.0]
  def change
    add_column :canchas, :id_usuario, :integer
  end
end
