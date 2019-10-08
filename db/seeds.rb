# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(names: 'Luke', movie: movies.first)

User.create email:'profesor@gatica.exe', name:'NombreProfesor', last_name:'Prueba', role:'Profesor', password:'profesor'
User.create email:'alumno@gatica.exe', name:'NombreAlumno', last_name:'Prueba', password:'alumno'

10.times do |i|
  Course.create(nrc: 5000+i, name: "Curso #{i}")
end