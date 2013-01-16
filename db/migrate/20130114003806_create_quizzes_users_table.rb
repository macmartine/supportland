class CreateQuizzesUsersTable < ActiveRecord::Migration
  def up
  	create_table :quizzes_users do |t|
  		t.integer :quiz_id
  		t.integer :user_id
  	end
  end

  def down
  	drop_table :quizzes_users
  end
end
