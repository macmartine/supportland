class AddCurrentToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :current, :boolean, :default => false
  end
end
