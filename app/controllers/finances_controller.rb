class FinancesController < ApplicationController
  def view

  end


  def filldetails

  end

  def self_view
    @pf=Pf.find_by_user_id(current_user.id)
  end

    def for_saving
      @in=Insurance.new(relation_type:params[:relation_type],name:params[:name_of_relation],dob:params[:dob_of_relation],gender:params[:gender_of_relation],company_name:current_user.company_name,empid:current_user.empid,user_id:current_user.id)
      @in.save
    end

  def insurancefill

    @pf=Pf.new(aadhar:params[:aadhar],pan:params[:pan],ifsc:params[:ifsc],bank_name:params[:bank_name],acc_number:params[:acc_number],company_name:current_user.company_name,empid:current_user.empid,user_id:current_user.id)
    @pf.save

  end
    def editinsurance
      @in=Insurance.find(params[:id])
      #@in=Insurance.where(user_id:current_user.id)

    end
  def editprovidentfund
    @pf=Pf.find(params[:id])
  end
    def updateinsurance
      @in=Insurance.find(params[:id])
      @in.update_attributes(relation_type:params[:relation_type],name:params[:name_of_relation],dob:params[:dob_of_relation],gender:params[:gender_of_relation])


  end
  def updateprovidentfund
    @pf=Pf.find(params[:id])
    @pf.update_attributes(aadhar:params[:aadhar],pan:params[:pan],ifsc:params[:ifsc],bank_name:params[:bank_name],acc_number:params[:acc_number])

  end
  def insurance
    @in=Insurance.find_all_by_user_id(current_user.id)
  end

  end
