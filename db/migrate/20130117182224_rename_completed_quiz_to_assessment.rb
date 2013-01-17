class RenameCompletedQuizToAssessment < ActiveRecord::Migration
  def up
  	rename_table :completed_quizzes, :assessments
  	rename_column :user_responses, :completed_quiz_id, :assessment_id
  end

  def down
  	rename_table :assessments, :completed_quizzes
  	rename_column :user_responses, :assessment_id, :completed_quiz_id
  end
end
