class ActiveWorkflowStep < ActiveRecord::Base
  belongs_to :workflow_template
  belongs_to :active_workflow
end
