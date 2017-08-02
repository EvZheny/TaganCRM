# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#User.create!(email: 'test@test.com', password: '12345678', password_confirmation: '12345678')
#AdminUser.create!(email: 'test@test.com', password: '12345678', password_confirmation: '12345678')

User.create!(email: '1111@test.com', password: '12345678', password_confirmation: '12345678', first_name: 'Mickael', last_name: 'Knight')
User.create!(email: 'Frank@test.com', password: '12345678', password_confirmation: '12345678', first_name: 'Frank', last_name: 'Prost')
User.create!(email: '2222@test.com', password: '12345678', password_confirmation: '12345678', first_name: 'Jason', last_name: 'Sauber')
User.create!(email: '3333@test.com', password: '12345678', password_confirmation: '12345678', first_name: 'Santiago', last_name: 'Rosco')
User.create!(email: '4444@test.com', password: '12345678', password_confirmation: '12345678', first_name: 'Miloslav', last_name: 'Dorkovich')

task1 = ExerciseList.create! exercise: "First Task"
task2 = ExerciseList.create! exercise: "Second Task"
task3 = ExerciseList.create! exercise: "Third Task"

Exercise.create! exercise_list: task1, user_name_id: 4, weight: '2222'
Exercise.create! exercise_list: task2, user_name_id: 5, weight: '3333'
Exercise.create! exercise_list: task3, user_name_id: 6, weight: '4444'