class CreateActiveWorkflows < ActiveRecord::Migration
  def change
    create_table :active_workflows do |t|
      t.string :name

      t.timestamps
    end
  end
end
