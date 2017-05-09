# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
#CREATING STUDENTS
Student.create([
	{first_name: 'Demario', last_name: 'Marbray', password: 'hshahah', password_confirmation: 'hshahah', phone_number: '45362', bio: Faker::ChuckNorris.fact, linkedin_url: Faker::Internet.url,
	twitter: Faker::Internet.url, site_url: Faker::Internet.url, resume_url: Faker::Internet.url, github_url: Faker::Internet.url, photo: 'pic'},
	{first_name: 'Jody', last_name: 'Lipkin', password: 'hshahah', password_confirmation: 'hshahah', phone_number: '45362', bio: Faker::ChuckNorris.fact, linkedin_url: Faker::Internet.url,
	twitter: Faker::Internet.url, site_url: Faker::Internet.url, resume_url: Faker::Internet.url, github_url: Faker::Internet.url, photo: 'pic'},
	{first_name: 'Zackary', last_name: 'Smead', password: 'hshahah', password_confirmation: 'hshahah', phone_number: '45362', bio: Faker::ChuckNorris.fact, linkedin_url: Faker::Internet.url,
	twitter: Faker::Internet.url, site_url: Faker::Internet.url, resume_url: Faker::Internet.url, github_url: Faker::Internet.url, photo: 'pic'},
	{first_name: 'Ken', last_name: 'Lu', password: 'hshahah', password_confirmation: 'hshahah', phone_number: '45362', bio: Faker::ChuckNorris.fact, linkedin_url: Faker::Internet.url,
	twitter: Faker::Internet.url, site_url: Faker::Internet.url, resume_url: Faker::Internet.url, github_url: Faker::Internet.url, photo: 'pic'},
	{first_name: 'Monia', last_name: 'Beas', password: 'hshahah', password_confirmation: 'hshahah', phone_number: '45362', bio: Faker::ChuckNorris.fact, linkedin_url: Faker::Internet.url,
	twitter: Faker::Internet.url, site_url: Faker::Internet.url, resume_url: Faker::Internet.url, github_url: Faker::Internet.url, photo: 'pic'},
	{first_name: 'James', last_name: 'Lagattuta', password: 'hshahah', password_confirmation: 'hshahah', phone_number: '45362', bio: Faker::ChuckNorris.fact, linkedin_url: Faker::Internet.url,
	twitter: Faker::Internet.url, site_url: Faker::Internet.url, resume_url: Faker::Internet.url, github_url: Faker::Internet.url, photo: 'pic'},
	{first_name: 'Eddie', last_name: 'Kamand', password: 'hshahah', password_confirmation: 'hshahah', phone_number: '45362', bio: Faker::ChuckNorris.fact, linkedin_url: Faker::Internet.url,
	twitter: Faker::Internet.url, site_url: Faker::Internet.url, resume_url: Faker::Internet.url, github_url: Faker::Internet.url, photo: 'pic'},
	{first_name: 'Olga', last_name: 'Bylova', password: 'hshahah', password_confirmation: 'hshahah', phone_number: '45362', bio: Faker::ChuckNorris.fact, linkedin_url: Faker::Internet.url,
	twitter: Faker::Internet.url, site_url: Faker::Internet.url, resume_url: Faker::Internet.url, github_url: Faker::Internet.url, photo: 'pic'}
	])


#CREATING SKILLS
Skill.create([
	{skill_name: 'ruby'},
	{skill_name: 'VueJS'},
	{skill_name: 'database development'},
	{skill_name: 'web development'},
	{skill_name: 'having fun'}
	])


#CREATING STUDENT SKILLS

StudentSkill.create([
	{student_id: 1, skill_id: 1},
	{student_id: 2, skill_id: 1},
	{student_id: 3, skill_id: 1},
	{student_id: 4, skill_id: 1},
	{student_id: 5, skill_id: 1},
	{student_id: 6, skill_id: 1},
	{student_id: 7, skill_id: 1},
	{student_id: 1, skill_id: 2},
	{student_id: 2, skill_id: 2},
	{student_id: 3, skill_id: 2},
	{student_id: 4, skill_id: 2},
	{student_id: 5, skill_id: 2},
	{student_id: 6, skill_id: 2},
	{student_id: 7, skill_id: 2},
	{student_id: 8, skill_id: 2},
	{student_id: 1, skill_id: 4},
	{student_id: 2, skill_id: 4},
	{student_id: 3, skill_id: 4},
	{student_id: 4, skill_id: 4},
	{student_id: 5, skill_id: 4},
	{student_id: 6, skill_id: 4},
	{student_id: 7, skill_id: 4},
	{student_id: 8, skill_id: 4},
	{student_id: 1, skill_id: 3},
	{student_id: 2, skill_id: 5},	
	{student_id: 3, skill_id: 5},	
	{student_id: 4, skill_id: 5}	
	])

Education.create([
	{start_date: '01-01-2006' , end_date: '06-25-2010', degree: Faker::Educator.course, university_name: Faker::University.name , details: Faker::Lorem.sentence, student_id: 1}, 
	{start_date: '01-01-2006' , end_date: '06-25-2010', degree: Faker::Educator.course, university_name: Faker::University.name , details: Faker::Lorem.sentence, student_id: 2}, 
	{start_date: '01-01-2006' , end_date: '06-25-2010', degree: Faker::Educator.course, university_name: Faker::University.name , details: Faker::Lorem.sentence, student_id: 3}, 
	{start_date: '01-01-2006' , end_date: '06-25-2010', degree: Faker::Educator.course, university_name: Faker::University.name , details: Faker::Lorem.sentence, student_id: 4}, 
	{start_date: '01-01-2006' , end_date: '06-25-2010', degree: Faker::Educator.course, university_name: Faker::University.name , details: Faker::Lorem.sentence, student_id: 5}, 
	{start_date: '01-01-2006' , end_date: '06-25-2010', degree: Faker::Educator.course, university_name: Faker::University.name , details: Faker::Lorem.sentence, student_id: 6}, 
	{start_date: '01-01-2006' , end_date: '06-25-2010', degree: Faker::Educator.course, university_name: Faker::University.name , details: Faker::Lorem.sentence, student_id: 7}, 
	{start_date: '01-01-2006' , end_date: '06-25-2010', degree: Faker::Educator.course, university_name: Faker::University.name , details: Faker::Lorem.sentence, student_id: 8} 
	])



Experience.create([
	{start_date: '01-01-2006' , end_date: '06-25-2010', job_title: Faker::Job.title, company_name: Faker::Company.name, details: Faker::Lorem.sentence, student_id: 1},
	{start_date: '01-01-2006' , end_date: '06-25-2010', job_title: Faker::Job.title, company_name: Faker::Company.name, details: Faker::Lorem.sentence, student_id: 2},
	{start_date: '01-01-2006' , end_date: '06-25-2010', job_title: Faker::Job.title, company_name: Faker::Company.name, details: Faker::Lorem.sentence, student_id: 3},
	{start_date: '01-01-2006' , end_date: '06-25-2010', job_title: Faker::Job.title, company_name: Faker::Company.name, details: Faker::Lorem.sentence, student_id: 4},
	{start_date: '01-01-2006' , end_date: '06-25-2010', job_title: Faker::Job.title, company_name: Faker::Company.name, details: Faker::Lorem.sentence, student_id: 5},
	{start_date: '01-01-2006' , end_date: '06-25-2010', job_title: Faker::Job.title, company_name: Faker::Company.name, details: Faker::Lorem.sentence, student_id: 6},
	{start_date: '01-01-2006' , end_date: '06-25-2010', job_title: Faker::Job.title, company_name: Faker::Company.name, details: Faker::Lorem.sentence, student_id: 7},
	{start_date: '01-01-2006' , end_date: '06-25-2010', job_title: Faker::Job.title, company_name: Faker::Company.name, details: Faker::Lorem.sentence, student_id: 8}
	])



Capstone.create([
	{name: Faker::Hipster.word , description: Faker::Lorem.sentence, url: 'capstone.com', screenshot: 'capstone.jpg', student_id: 1},
	{name: Faker::Hipster.word , description: Faker::Lorem.sentence, url: 'capstone.com', screenshot: 'capstone.jpg', student_id: 2},
	{name: Faker::Hipster.word , description: Faker::Lorem.sentence, url: 'capstone.com', screenshot: 'capstone.jpg', student_id: 3},
	{name: Faker::Hipster.word , description: Faker::Lorem.sentence, url: 'capstone.com', screenshot: 'capstone.jpg', student_id: 4},
	{name: Faker::Hipster.word , description: Faker::Lorem.sentence, url: 'capstone.com', screenshot: 'capstone.jpg', student_id: 5},
	{name: Faker::Hipster.word , description: Faker::Lorem.sentence, url: 'capstone.com', screenshot: 'capstone.jpg', student_id: 6},
	{name: Faker::Hipster.word , description: Faker::Lorem.sentence, url: 'capstone.com', screenshot: 'capstone.jpg', student_id: 7},
	{name: Faker::Hipster.word , description: Faker::Lorem.sentence, url: 'capstone.com', screenshot: 'capstone.jpg', student_id: 8}
	])
