class AssociateResponseWithQuestionNotQuiz < ActiveRecord::Migration
  def up
  	rename_column :responses, :quiz_id, :question_id
  end

  def down
  	rename_column :responses, :question_id, :quiz_id
  end
end
