class Skill < ApplicationRecord
	has_many :students, through: :student_skills
	has_many :student_skills
end
