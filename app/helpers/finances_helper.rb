module FinancesHelper
  def find_all_insurancedetail_by_empid(eachperson)
    Insurance.find_all_by_empid(eachperson.empid)
  end
  def find_providentfunddetail_by_empid(eachperson)
  Providentfund.find_all_by_empid(eachperson.empid)
  end
end
