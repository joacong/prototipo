class ActiveWorkflow < ActiveRecord::Base
  has_many :active_workflow_steps
end
