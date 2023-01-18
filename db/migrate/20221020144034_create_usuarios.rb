# frozen_string_literal: true

class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :imagen_perfil
      t.string :correo
      t.string :telefono
      t.string :contrasena

      t.timestamps
    end
  end
end
