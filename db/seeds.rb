# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(names: 'Luke', movie: movies.first)

User.create email:'profesor@gatica.exe', run:'12.345.678-0', name:'Profesor', last_name:'Prueba', birth_date:'2009-06-06', password:'profesor'
User.create email:'alumno@gatica.exe', run:'12.345.678-0', name:'Alumno', last_name:'Prueba', birth_date:'2009-06-06', password:'alumno'

10.times do |i|
  Course.create(nrc: i, name: "Curso #{i}")



end