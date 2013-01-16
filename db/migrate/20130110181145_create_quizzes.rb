class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.date :start_date
      t.string :question
      t.string :answer
      t.integer :winner_id

      t.timestamps
    end
  end
end
