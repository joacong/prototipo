class WorkflowTemplate < ActiveRecord::Base
  belongs_to :workflow_template
  has_many :workflow_templates
end
