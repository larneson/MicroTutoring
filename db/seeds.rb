# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

User.create!(email: 'bob@gmail.com',
             first_name: 'Bob',
             last_name: 'Bucket',
             username: 'bobbucket',
             about: 'A philosopher at heart, with a penchant for quantum mechanics.',
             fav_subjects: 'Philosophy, Physics, Math', password: 'password',
             password_confirmation: 'password')


User.create!(email: 'alicia@gmail.com',
             first_name: 'Alicia',
             last_name: 'Ninh',
             username: 'artattackk',
             about: 'Cog Sci class of 2019, with a CS minor! pls help me with 188 stuff',
             fav_subjects: 'Cog Sci, CS', password: 'password',
             password_confirmation: 'password')

User.create!(email: 'jacksback@gmail.com',
             first_name: 'Jack',
             last_name: 'Wang',
             username: 'jack_attack',
             about: 'EECS EECS EECS',
             fav_subjects: 'EECS', password: 'password',
             password_confirmation: 'password')

Subject.create!(name: "English")

Subject.create!(name: "Physics")

Subject.create!(name: "Computer Science")

Course.create!(number: "188",
               subject_id: Subject.find_by(name: "Computer Science").id,
               description: "AI, robots, perceptrons, neural networks!"
)

Course.create!(number: "61C",
               subject_id: Subject.find_by(name: "Computer Science").id,
               description: "CPUs, caches, and stuff. Everyone's favorite lower div CS course at Berkeley!"
)

Course.create!(number: "7A",
               subject_id: Subject.find_by(name: "Physics").id,
               description: "An introduction to physics, featuring many physics topics."
)

Course.create!(number: "R1B: American History",
               subject_id: Subject.find_by(name: "English").id,
               description: "An introductory literature class that broadly surveys the history of the United States."
)
