class AddCompletedQuizIdToResponses < ActiveRecord::Migration
  def change
  	add_column :responses, :completed_quiz_id, :integer
  end
end
