class Quiz < ActiveRecord::Base
  attr_accessible :start_date, :winner_id, :current, :questions_attributes

  belongs_to :winner, :class_name => "User"
  has_many :questions
  has_many :user_responses
  has_and_belongs_to_many :users

  accepts_nested_attributes_for :questions

  validates_presence_of :start_date

  def self.current
  	where(:current => true).first
  end
end
