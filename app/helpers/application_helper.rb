module ApplicationHelper
  def find_all_user_by_company_name_and_empid(current_user)
    Permission.find_all_by_company_name_and_empid(current_user.company_name,current_user.empid)
  end

  def find_all_user_by_company_name(current_user)
    User.find_all_by_company_name(current_user.company_name)
  end
end
