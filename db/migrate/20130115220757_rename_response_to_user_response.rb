class RenameResponseToUserResponse < ActiveRecord::Migration
  def up
  	rename_table :responses, :user_responses
  	rename_column :user_responses, :response, :user_response
  end

  def down
  	rename_table :user_responses, :responses
  	rename_column :responses, :user_response, :response
  end
end
