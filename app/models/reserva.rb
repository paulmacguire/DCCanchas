# frozen_string_literal: true

class Reserva < ApplicationRecord
  belongs_to :usuario
  belongs_to :cancha
end
