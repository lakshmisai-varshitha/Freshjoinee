module PersonalsHelper
  def find_all_personaldetail_by_empid(eachperson)
    Personal.find_all_by_empid(eachperson.empid)
  end

  def find_all_address_by_companyname_and_empid(current_user, eachperson)
  Address.find_all_by_company_name_and_empid( current_user.company_name, eachperson.empid)
  end
end
