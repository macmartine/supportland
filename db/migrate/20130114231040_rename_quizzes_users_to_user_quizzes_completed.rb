class RenameQuizzesUsersToUserQuizzesCompleted < ActiveRecord::Migration
  def up
  	rename_table :quizzes_users, :completed_quizzes
  end

  def down
  	rename_table :completed_quizzes, :quizzes_users
  end
end
