
user 	= User.create({first: 'Gumby', last: 'Gumba'})

quiz 			= Quiz.create!(:start_date => Date.today)
quiz.questions << Question.create(:question => 'How young am I?', :answer => '-13', :answer_type => "integer")
user.completed_quizzes << CompletedQuiz.create(quiz_id: quiz.id, user_id: user.id )

quiz 			= Quiz.create!(:start_date => Date.today, :current => true)
quiz.questions << Question.create(:question => 'How old am I?', :answer => '112', :answer_type => "integer")
user.completed_quizzes << CompletedQuiz.create(quiz_id: quiz.id, user_id: user.id)
