class UserResponse < ActiveRecord::Base
	attr_accessible :user_id, :question_id, :user_response, :completed_quiz_id

	belongs_to :question
	belongs_to :user
end
