class Assessment < ActiveRecord::Base
  attr_accessible :quiz_id, :user_id, :user_responses_attributes

  delegate :questions, :winner, :start_date, :to => :quiz

  belongs_to :user
  belongs_to :quiz
  has_many :user_responses

  accepts_nested_attributes_for :user_responses

	after_initialize :init

  def init
  	return if self.user_responses.present?
  	self.questions.map do |q|
  		self.user_responses.build(:question_id => q.id)
  	end
  end

end
