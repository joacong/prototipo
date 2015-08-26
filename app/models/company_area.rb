class CompanyArea < ActiveRecord::Base
  belongs_to :company_area
  has_many :users
end
