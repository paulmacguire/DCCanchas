# frozen_string_literal: true

class CreateResenas < ActiveRecord::Migration[6.0]
  def change
    create_table :resenas do |t|
      t.integer :calificacion
      t.text :contenido
      t.references :usuario, null: false, foreign_key: true
      t.references :cancha, null: false, foreign_key: true

      t.timestamps
    end
  end
end
