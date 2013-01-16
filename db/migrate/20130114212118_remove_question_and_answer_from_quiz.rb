class RemoveQuestionAndAnswerFromQuiz < ActiveRecord::Migration
  def up
  	remove_column :quizzes, :question
  	remove_column :quizzes, :answer
  end

  def down
  	add_column :quizzes, :question, :string
  	add_column :quizzes, :answer, :string
  end
end
