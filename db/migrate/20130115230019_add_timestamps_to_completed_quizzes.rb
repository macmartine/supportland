class AddTimestampsToCompletedQuizzes < ActiveRecord::Migration

  def change
    add_column(:completed_quizzes, :created_at, :datetime)
    add_column(:completed_quizzes, :updated_at, :datetime)
  end

end
