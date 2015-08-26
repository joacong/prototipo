class CreateWorkflowTemplates < ActiveRecord::Migration
  def change
    create_table :workflow_templates do |t|
      t.string :name
      t.references :workflow_template, index: true

      t.timestamps
    end
  end
end
