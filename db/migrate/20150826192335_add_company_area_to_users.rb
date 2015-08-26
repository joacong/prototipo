class AddCompanyAreaToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :company_area, index: true
  end
end
