class Admin::QuizzesController < ApplicationController

	def index
		@quizzes = Quiz.all
	end

	def new
		@quiz = Quiz.new
		@quiz.questions.build
	end

	def create
		@quiz = Quiz.new(params[:quiz])
		if @quiz.save
			redirect_to admin_quizzes_path
		else
			render :action => 'new'
		end
	end

end
