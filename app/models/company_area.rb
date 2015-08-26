class CompanyArea < ActiveRecord::Base
  belongs_to :company_area
  has_many :users

  def parent
  	CompanyArea.find_by_id company_area_id
  end

  def parent_name
  	parent.try(:name)
  end
end
