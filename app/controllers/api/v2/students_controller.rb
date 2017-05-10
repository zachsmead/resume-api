class Api::V2::StudentsController < ApplicationController
	def index
		@students = Student.all
	end

	def show
		@student = Student.find_by(id: params[:id])
	end

	# test for commit

	def create
		@student = Student.new(
			first_name: params[:first_name], 
			last_name: params[:last_name],
			email: params[:email],
			password: params[:password], 
			password_confirmation: params[:password_confirmation], 
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

		@student.update(
			first_name: params[:first_name], 
			last_name: params[:last_name],
			email: params[:email],
			# password: params[:password],
			phone_number: params[:phone_number],
			bio: params[:bio],
			linkedin_url: params[:linkedin_url],
			twitter: params[:twitter],
			site_url: params[:site_url],
			resume_url: params[:resume_url],
			github_url: params[:github_url],
			photo: params[:photo]
		)

		puts @student.errors.full_messages

		render :show
	end

	def destroy
		@student = Student.find_by(id: params[:id])
		@student.destroy
	end

	def login
		email = params[:email]
		password = params[:password]

		student =  Student.find_by(email: email)
		if student && student.authenticate(password)
			render 'show.json.jbuilder'
		else
			render json: { errors: "Authentication failed" }, status: 422
		end
	end
end
