class EducationalDetail < ActiveRecord::Base
  attr_accessible :comp_id, :emp_id, :institution, :location, :percentage, :stream, :education_type, :year_completion
end
