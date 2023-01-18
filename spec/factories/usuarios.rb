require 'faker'

FactoryBot.define do
  factory :usuario do
    nombre { 'Pedro' }
      email { Faker::Internet.email }
      imagen_perfil { Faker::Internet.url }
      telefono { '987654321' }
      password { '123123' }
      password_confirmation { '123123' }
      tipo_usuario { 'Jugador' }
  end
end

