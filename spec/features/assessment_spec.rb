require 'spec_helper'

describe "Assessment" do

	describe 'index' do

		before :each do
			visit assessments_path
		end

		it "displays quizzes taken" do

		end

		it "has 'take quiz' button" do
		  click_link 'Take current quiz'
		  current_path.should eq(new_assessment_path)
		end

	end

	describe 'new' do

		before :each do
			visit new_completed_quiz_path
		end

	  it "displays current question" do
	    page.should have_content('How old am I?')
	    page.should_not have_content('How young am I?')
	  end

	  it "should accept valid format" do
	    fill_in 'User response', :with => '123'
	    click_button 'Final answer!'
	    current_path.should eq(assessments_path)
	    page.should have_content('We got it!')
	  end

	  it "should not accept answer in an invalid format" do
	  	pending
	    fill_in 'User response', :with => 'abc'
	    click_button 'Final answer!'
	    current_path.should eq(assessments_path)
	    page.should have_content('Please enter a number.')
	  end

	  it "doesn't let you take quiz a second time" do
	    pending
	  end

	  it "let's you know if there's not currently a quiz" do
	    pending
	  end

	end

end
