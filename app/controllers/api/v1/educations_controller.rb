class Api::V1::EducationsController < ApplicationController

	def index
		@educations = Education.all
	end

	def create
		@education = Education.new(start_date: params[:start_date], end_date: params[:end_date], 
			degree: params[:degree], university_name: params[:university_name], details: params[:details])

		if @education.save
			render 'show.json.jbuilder'
		else
			render json: { errors: @person.errors.full_messages }, status: 422
		end
	end

	def show
		@education = Education.find_by(id: params[:id])
	end

	def update
		@education = Education.find_by(id: params[:id])
		@education.update(start_date: params[:start_date], end_date: params[:end_date], 
			degree: params[:degree], university_name: params[:university_name], details: params[:details])
		render 'show.json.jbuilder'
	end

	def destroy
		@education = Education.find_by(id: params[:id])
		@education.destroy
	end
end

