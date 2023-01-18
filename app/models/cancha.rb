# frozen_string_literal: true

class Cancha < ApplicationRecord
  has_many :resenas, dependent: :delete_all
  has_many :reservas, dependent: :delete_all
end
