class Api::V1::CapstonesController < ApplicationController
	
	def index
		@capstones = Capstone.all
	end

	def show
		@capstone = Capstone.find_by(id: params[:id])
	end

	def create
		@capstone = Capstone.new(name: params[:name], destription: params[:destription], url: params[:url], screenshot: params[:screenshot])
		if @capstone.save
			render 'show.json.jbuilder'
		else
			render json: {errors: @capstone.errors.full_messages}, status: 422
	end

	def update
		capstone = Capstone.find_by(id: params[:id])
		capstone.update(name: params[:name], destription: params[:destription], url: params[:url], screenshot: params[:screenshot])
		render 'show.json.jbuilder'
	end

	def destroy
		capstone = Capstone.find_by(id: params[:id])
		capstone.destroy
		@capstones = Capstone.all
		render :index
	end
end
