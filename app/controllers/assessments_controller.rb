class AssessmentsController < ApplicationController

	def index
		@assessments = current_user.assessments
	end

	def new
		@assessment 		= Assessment.new(user_id: current_user.id, quiz_id: Quiz.current.id)
	end

	def create
		@response = Assessment.new(params[:assessment])
		if @response.save
			flash[:notice] = "We got it!"
			redirect_to assessments_path
		else
			render :action => 'new'
		end
	end

end
