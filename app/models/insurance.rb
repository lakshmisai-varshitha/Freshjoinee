class Insurance < ActiveRecord::Base
  attr_accessible :company_name, :dob, :empid, :gender, :name, :relation_type, :user_id
belongs_to :user
end
