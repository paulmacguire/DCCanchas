class AddEstadoToReservas < ActiveRecord::Migration[6.0]
  def change
    add_column :reservas, :estado, :string
  end
end