class Pf < ActiveRecord::Base
  attr_accessible :aadhar, :acc_number, :bank_name, :company_name, :empid, :ifsc, :pan, :user_id
belongs_to :user
end
