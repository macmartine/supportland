class CreateAddQuestionsTables < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer
      t.string :answer_type
      t.integer :quiz_id

      t.timestamps
    end
  end
end
