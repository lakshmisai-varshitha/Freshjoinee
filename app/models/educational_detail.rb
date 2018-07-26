class EducationalDetail < ActiveRecord::Base
  attr_accessible :company_name, :empid, :institution, :location, :percentage, :stream, :education_type, :year_completion,:user_id
belongs_to :user
end
