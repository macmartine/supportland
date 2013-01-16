class CompletedQuizzesController < ApplicationController

	def index
		@completed_quizzes = current_user.completed_quizzes
	end

	def new
		@completed_quiz 		= CompletedQuiz.new(user_id: current_user.id, quiz_id: Quiz.current.id)
	end

	def create
		@response = CompletedQuiz.new(params[:completed_quiz])
		if @response.save
			flash[:notice] = "We got it!"
			redirect_to completed_quizzes_path
		else
			render :action => 'new'
		end
	end

end
