class CreateWorkflowTemplateSteps < ActiveRecord::Migration
  def change
    create_table :workflow_template_steps do |t|
      t.references :workflow_template_step, index: true

      t.timestamps
    end
  end
end
