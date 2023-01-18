class AddEquipamientoToReservas < ActiveRecord::Migration[6.0]
  def change
    add_column :reservas, :equipamiento, :text, array: true, default: []
  end
end