class Api::V1::SkillsController < ApplicationController
	def index
		@skills = Skill.all
	end

	def show
		@skill = Skill.find_by(id: params[:id])
	end

	def create
		@skill = Skill.new(skill_name: params[:skill_name])
		render :show
	end

	def update
		@skill = Skill.find_by(id: params[:id])
		@skill.update(skill_name: params[:skill_name])
		render :show
	end

	def destroy
		skill = Skill.find_by(id: params[:id])
		skilll.destroy
		@skill = Skill.all
		render :index
	end
end