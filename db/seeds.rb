# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
usuarios = Usuario.create([{nombre: "Admin",
    imagen_perfil: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcincodias.elpais.com%2Fcincodias%2F2016%2F03%2F16%2Flifestyle%2F1458143779_942162.html&psig=AOvVaw3ufOfaKwfhXJRdj0QsVGvR&ust=1668184667200000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPC9oqWGpPsCFQAAAAAdAAAAABAE',
    telefono: "123456789",
    email: "admin@uc.cl",
    password: "123456",
    password_confirmation: "123456",
    tipo_usuario: 'Admin'}
    ])
