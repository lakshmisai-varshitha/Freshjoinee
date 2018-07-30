module EducationalsHelper

  def find_all_educationdetail_by_empid(eachperson)
    Educational.find_all_by_empid(eachperson.empid)
  end
end
