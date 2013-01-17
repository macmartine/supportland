class UserResponse < ActiveRecord::Base
	attr_accessible :assessment_id, :question_id, :user_response, :completed_quiz_id

	belongs_to :question
	belongs_to :assessment_id
end
