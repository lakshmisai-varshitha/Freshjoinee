module EmploymentsHelper

  def find_all_employmentdetail_by_empid(eachperson)
  Employment.find_all_by_empid(eachperson.empid)
  end
end
