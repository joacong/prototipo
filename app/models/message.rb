class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :active_workflow_step
end
