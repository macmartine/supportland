class Question < ActiveRecord::Base
  attr_accessible :answer, :answer_type, :question, :quiz_id

  belongs_to :quiz

  validates_presence_of :question, :answer
  has_many :user_responses
end
