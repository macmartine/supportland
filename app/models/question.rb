class Question < ActiveRecord::Base
  attr_accessible :answer, :answer_type, :question, :quiz_id

  belongs_to :quiz

  has_many :user_responses

  validates_presence_of :question, :answer
  validates :answer_type, :answer_type => true

  ANSWER_TYPES = %w{ Number String Yes/No True/False }

  ANSWER_TYPES.each_with_index do |meth, index|
    define_method("#{meth}?") { type == index }
  end

end
