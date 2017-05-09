class Student < ApplicationRecord
	has_secure_password
	has_many :experiences
	has_many :educations
	has_many :skills, through: :student_skills
	has_many :student_skills
	has_many :capstones
end



