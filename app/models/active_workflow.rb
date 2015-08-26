class ActiveWorkflow < ActiveRecord::Base
  has_many :active_workflow_steps
  has_many :documents
end
