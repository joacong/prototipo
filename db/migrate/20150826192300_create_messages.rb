class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :user, index: true
      t.text :content
      t.references :active_workflow_step, index: true

      t.timestamps
    end
  end
end
