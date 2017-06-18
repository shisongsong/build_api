# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Teacher.delete_all
Course.delete_all
Student.delete_all

teachers = Teacher.create([
  { name: "Ali" },
  { name: "Baidu" }
])

courses = Course.create([
  {
    name: "Math",
    teacher_id: teachers.first.id
  },
  {
    name: "Music",
    teacher_id: teachers.last.id
  },
  {
    name: "Chinese",
    teacher_id: teachers.first.id
  },
  { 
    name: "English",
    teacher_id: teachers.last.id
  }
])

students = Student.create([
  { name: "Li Lei" },
  { name: "Zhou Lei" },
  { name: "Wang Laowu" },
  { name: "Han Meimei" }
])

students[0].courses << courses[0]
students[1].courses << courses[1]
students[2].courses << courses[2]
students[3].courses << courses[3]
