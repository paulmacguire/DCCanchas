# frozen_string_literal: true

class CreateCanchas < ActiveRecord::Migration[6.0]
  def change
    create_table :canchas do |t|
      t.string :direccion
      t.string :descripcion
      t.string :deporte

      t.timestamps
    end
  end
end
