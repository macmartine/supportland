require 'spec_helper'

describe "Admin::Quizzes" do

	before :each do
    visit admin_quizzes_path
    click_link 'Add Quiz'
    page.should have_content('New Quiz')
	end

  it "adds new question when valid" do
    fill_in 'Start date', :with => '12/1/2012'
    fill_in 'Question', :with => "How many jelly beans aree in the jar in the window of the antique shop downtown?"
    fill_in 'Answer', :with => "1131"
    click_button 'Save'
    current_path.should eq(admin_quizzes_path)
    page.should have_content 'How many jelly beans'
  end

  it "doesn't add question when empty start date" do
    fill_in 'Question', :with => "How many jelly beans aree in the jar in the window of the antique shop downtown?"
    fill_in 'Answer', :with => "1131"
    click_button 'Save'
    current_path.should eq(admin_quizzes_path)
    page.should have_content "can't be blank"
  end

  it "doesn't add question when empty question" do
    fill_in 'Start date', :with => '12/1/2012'
    fill_in 'Answer', :with => "1131"
    click_button 'Save'
    current_path.should eq(admin_quizzes_path)
    page.should have_content "can't be blank"
  end

  it "doesn't add question when empty answer" do
    fill_in 'Start date', :with => '12/1/2012'
    fill_in 'Question', :with => "How many jelly beans aree in the jar in the window of the antique shop downtown?"
    click_button 'Save'
    current_path.should eq(admin_quizzes_path)
    page.should have_content "can't be blank"
  end

  it "doesn't save quiz on cancel" do
    fill_in 'Start date', :with => '12/1/2012'
    fill_in 'Question', :with => "How many jelly beans aree in the jar in the window of the antique shop downtown?"
    fill_in 'Answer', :with => "1131"
    click_link 'Cancel'
    current_path.should eq(admin_quizzes_path)
  end

  it "shows datepicker upon clicking start date field" do
  end

  it "should format date in a friendly way" do
    fill_in 'Start date', :with => '12/1/2012'
    fill_in 'Question', :with => "How many jelly beans aree in the jar in the window of the antique shop downtown?"
    fill_in 'Answer', :with => "1131"
    click_button 'Save'
    current_path.should eq(admin_quizzes_path)
    page.should have_content 'Jan 12, 2012'
  end

end
