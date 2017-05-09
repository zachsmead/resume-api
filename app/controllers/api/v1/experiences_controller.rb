class Api::V1::ExperiencesController < ApplicationController

	def index
		@experiences = Experience.all
	end

	def create
		@experience = Experience.new(start_date: params[:start_date], end_date: params[:end_date],
		job_title: params[:job_title], company_name: params[:company_name], details: params[:details])

		if @experience.save
			render 'show.json.jbuilder'
		else
			render json: { errors: @person.errors.full_messages }, status: 422
		end
	end

	def destroy
	end
end
