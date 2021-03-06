class User < ActiveRecord::Base
  attr_accessible :email, :first, :last
  has_and_belongs_to_many :quizzes
  has_many :assessments

  def full_name
  	first + ' ' + last
  end
end
