class EmploymentDetail < ActiveRecord::Base
  attr_accessible :comp_id, :comp_name, :designation, :emp_id, :experience, :from_date, :to_date
end
