class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.references :active_workflow, index: true

      t.timestamps
    end
  end
end
