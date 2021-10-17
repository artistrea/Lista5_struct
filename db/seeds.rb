# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Teacher.create(name: "Amarova", email: "amarovar@gmail.com", birthdate: "1995-09-23")
Teacher.create(name: "João", email: "joanlan@gmail.com", birthdate: "1998-02-10")

Language.create(name:"Python", teacher_id: 1)
Language.create(name:"C", teacher_id: 2)

Student.create(name: "Artur", student_register: "011203783", email: "artistr@gmail.com", birthdate: "2003-01-01", teacher_id: 1)
Student.create(name: "Ana", student_register: "034203783", email: "anaravel@gmail.com", birthdate: "2001-02-21", teacher_id: 1)
Student.create(name: "Mario", student_register: "211403783", email: "marconapra@gmail.com", birthdate: "2002-09-02", teacher_id: 1)
Student.create(name: "José", student_register: "561203783", email: "jos@gmail.com", birthdate: "2003-04-12", teacher_id: 2)
Student.create(name: "Carlos", student_register: "011233783", email: "carloscanaa@gmail.com", birthdate: "2000-05-17", teacher_id: 2)

Admin.create(email: 'adm@admin' , password: 'password')