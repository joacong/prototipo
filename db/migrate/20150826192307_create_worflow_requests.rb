class CreateWorflowRequests < ActiveRecord::Migration
  def change
    create_table :worflow_requests do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
