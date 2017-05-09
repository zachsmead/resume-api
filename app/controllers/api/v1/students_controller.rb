class Api::V1::StudentsController < ApplicationController
	def index
		@students = Student.all
	end

	def show
		@student = Student.find_by(id: params[:id])
	end

	def create
		@student = Student.new(
			first_name: params[:first_name], 
			last_name: params[:last_name], 
			phone_number: params[:phone_number],
			bio: params[:bio],
			linkedin_url: params[:linkedin_url],
			twitter: params[:twitter],
			site_url: params[:site_url],
			resume_url: params[:resume_url],
			github_url: params[:github_url],
			photo: params[:photo]
		)

		if @student.save
			render 'show.json.jbuilder'
		else
			# if the model does not save, instead of rendering the show for this json object
			# we will just render a json object here that contains the errors for the object
			render json: { errors: @student.errors.full_messages }, status: 422
		end
	end

	def update
		@student = Student.find_by(id: params[:id])

		Student.update(
			first_name: params[:first_name], 
			last_name: params[:last_name], 
			phone_number: params[:phone_number],
			bio: params[:bio],
			linkedin_url: params[:linkedin_url],
			twitter: params[:twitter],
			site_url: params[:site_url],
			resume_url: params[:resume_url],
			github_url: params[:github_url],
			photo: params[:photo]
		)

		render 'show.json.builder'
	end

	def destroy
		@student = Student.find_by(id: params[:id])
		@student.destroy
	end
end
