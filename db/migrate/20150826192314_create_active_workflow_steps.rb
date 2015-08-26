class CreateActiveWorkflowSteps < ActiveRecord::Migration
  def change
    create_table :active_workflow_steps do |t|
      t.integer :number
      t.references :workflow_template, index: true
      t.references :active_workflow, index: true

      t.timestamps
    end
  end
end
