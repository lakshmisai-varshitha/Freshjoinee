class EmploymentDetail < ActiveRecord::Base
  attr_accessible :company_name, :comp_name, :designation, :empid, :experience, :from_date, :to_date
end
