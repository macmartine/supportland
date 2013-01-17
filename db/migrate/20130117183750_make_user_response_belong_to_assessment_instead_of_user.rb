class MakeUserResponseBelongToAssessmentInsteadOfUser < ActiveRecord::Migration
  def up
  	rename_column :user_responses, :user_id, :assessment_id
  end

  def down
  	rename_column :user_responses, :assessment_id, :user_id
  end
end
