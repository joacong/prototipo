class CreateCompanyAreas < ActiveRecord::Migration
  def change
    create_table :company_areas do |t|
      t.string :name
      t.references :company_area, index: true

      t.timestamps
    end
  end
end
