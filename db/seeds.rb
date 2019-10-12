# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(names: 'Luke', movie: movies.first)

User.create email:'profesor@gatica.exe', name:'NombreProfesor', last_name:'Prueba', role:'Profesor', password:'profesor'

8.times do |i|
  Course.create(nrc: 5000+i, name: "Curso #{i}")
end

10.times do |i|
	User.create email:"profesor#{i}@gatica.exe", name:'NombreProfesor', last_name:'Prueba', role:'Profesor', password:'profesor'
end

User.create email:'alumno@gatica.exe', name:'NombreAlumno', last_name:'Prueba', password:'alumno'

30.times do |i|
	User.create email:"alumno#{i}@gatica.exe", name:'NombreAlumno', last_name:'Prueba', password:'alumno'
end

########################################################################################################
# Agrega cursos y evaluaciones a profesores, tambien agrega los profesores en cada curso
########################################################################################################

for i in 1..4
  add=User.find(i)
  addx=Course.find(i)
  addx.teachers<<i
  add.courses=[1,2,3,4]
  add.rating=[[6.0, 15],[7.0, 27],[5.0, 25],[6.0, 29],[7.0, 28]]
  addx.save!
  add.save!
end

for i in 5..8
  add=User.find(i)
  add.courses=[2,4,5,6,8]
  add.rating=[[1.0, 12],[3.5, 16],[7.0, 13],[3.0, 14],[4.0, 17]]
  add.save!
end

[2,4,5,6,8].each do |i|
  addx=Course.find(i)
  addx.teachers<<5
  addx.teachers<<6
  addx.teachers<<7
  addx.teachers<<8
  addx.save!
end

for i in 9..11
  add=User.find(i)
  add.courses=[1,3,6,7,8]
  add.rating=[[3.0, 21],[7.0, 22],[1.0, 20],[6.0, 24],[1.0, 19]]
  add.save!
end

[1,3,6,7,8].each do |i|
  addx=Course.find(i)
  addx.teachers<<9
  addx.teachers<<10
  addx.teachers<<11
  addx.save!
end

########################################################################################################
# Agrega los cursos a los alumnos
########################################################################################################

for i in 12..42
  add=User.find(i)
  add.courses=[4,5,6]
  add.save!
end

[15, 27, 25, 29, 28].each do |i|
  add=User.find(i)
  add.courses<<1 
  add.courses<<2
  add.courses<<3
  add.save!
end

[12, 16, 13, 14, 17].each do |i|
  add=User.find(i)
  add.courses<<2
  add.courses<<8
  add.save!
end

[21, 22, 20, 24, 19].each do |i|
  add=User.find(i)
  add.courses<<1
  add.courses<<3
  add.courses<<7
  add.courses<<8
  add.save!
end

########################################################################################################
# Agrega los alumnos a los cursos
########################################################################################################

for i in 12..42
  addx=Course.find(4)
  addy=Course.find(5)
  addz=Course.find(6)
  addx.students<<i
  addy.students<<i
  addz.students<<i
  addx.save!
  addy.save!
  addz.save!
end

[15, 27, 25, 29, 28].each do |i|
  addx=Course.find(1)
  addy=Course.find(2)
  addz=Course.find(3)
  addx.students<<i
  addy.students<<i
  addz.students<<i
  addx.save!
  addy.save!
  addz.save!
end

[12, 16, 13, 14, 17].each do |i|
  addx=Course.find(2)
  addy=Course.find(8)
  addx.students<<i
  addy.students<<i
  addx.save!
  addy.save!
end

[21, 22, 20, 24, 19].each do |i|
  addw=Course.find(1)
  addx=Course.find(3)
  addy=Course.find(7)
  addz=Course.find(8)
  addw.students<<i
  addx.students<<i
  addy.students<<i
  addz.students<<i
  addw.save!
  addx.save!
  addy.save!
  addz.save!
end