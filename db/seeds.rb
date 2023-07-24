# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Crear al usuario "Anónimo" si no existe
puts 'creando anonymous'
User.find_or_create_by(name: 'Anónimo')
puts 'anonimo creado'
puts 'creando un usuario'

User.create!(
    name: 'user',
    email: 'user@example.com',
    password: 'user123',
  )
puts 'usuario creado'