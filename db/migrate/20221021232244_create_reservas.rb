# frozen_string_literal: true

class CreateReservas < ActiveRecord::Migration[6.0]
  def change
    create_table :reservas do |t|
      t.string :hora_inicio
      t.date :fecha
      t.string :nombre_usuario
      t.references :usuario, null: false, foreign_key: true
      t.references :cancha, null: false, foreign_key: true

      t.timestamps
    end
  end
end
