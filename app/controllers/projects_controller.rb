class ProjectsController < ApplicationController


def for_saving

  records = Permission.where("company_name = ?", current_user.company_name).all
  eid = records.count+1
  @permission=Permission.new(company_name:current_user.company_name,
                             department:params[:department],personal_details:params[:personal_details],finance_details:params[:finance_details], education_details:params[:education_details], employment_details:params[:employment_details], empid:eid, user_id:eid)

  @permission.save

  #if @permission.department == "admin" then @p = "admin" else @p= "guest" end

  @user=User.new(name:params[:name],email:params[:email],password:params[:password],login_type:"guest",company_name:current_user.company_name, empid:eid)
@user.save

  #if @user.save then flash[:success] ="user saved" else flash[:warning]="not registered" end

end
  def adduser
    redirect_to '/' if current_user.login_type=='guest'
    #@user=User.new(name:params[:name])

  end
def details
  #@personal=PersonalDetail.new(name:params[:name],email:params[:email],gender:params[:gender],dob:params[:dob],contact:params[:contact],company_name:current_user.company_name,empid:current_user.empid)
  #@personal.save
  #@personaldetail=PersonalDetail.new(params[:personaldetail])
  #@personal.save
  #@employment=EmploymentDetail.new(comp_name:params[:comp_name],designation:params[:designation],from_date:params[:from_date],to_date:params[:to_date],experience:params[:experience],company_name:current_user.company_name,empid:current_user.empid)
  #@employment.save
  #@education=EducationalDetail.new(education_type:params[:education_type],institution:params[:institution],stream:params[:stream],percentage:params[:percentage],location:params[:location],year_completion:params[:year_completion],company_name:current_user.company_name,empid:current_user.empid)
  #@education.save
  #@pf=Pf.new(aadhar:params[:aadhar],pan:params[:pan],ifsc:params[:ifsc],bank_name:params[:bank_name],acc_number:params[:acc_number],company_name:current_user.company_name,empid:current_user.empid)
  #@pf.save
  #@insurance=Insurance.new(relation_type:params[:relation_type],name:params[:name_of_relation],dob:params[:dob_of_relation],gender:params[:gender_of_relation],company_name:current_user.company_name,empid:current_user.empid)
  #@insurance.save
  #@address=Address.new(doorno:params[:doorno],street:params[:street],city:params[:city],country:params[:country],district:params[:district],state:params[:state],pincode:params[:pincode],address_type:params[:address_type],company_name:current_user.company_name,empid:current_user.empid)
  #@address.save
end

  def save_permission_for_admin

    if(current_user)
      if(current_user.sign_in_count==1 && current_user.login_type=="admin")
        records = Permission.where("company_name = ?", current_user.company_name).all
        eid = records.count+1
        @permission=Permission.new(company_name:current_user.company_name,
                                   department:"admin",personal_details:true,finance_details:true, education_details:true, employment_details:true, empid:eid, user_id: eid)

        @permission.save
        current_user.empid=eid
        current_user.save

      end
    end
  end



  def education

  end

  def employment

  end

  def add_info_links

  end
  def insurance

  end

  def personal

  end

  def finance

  end

end
