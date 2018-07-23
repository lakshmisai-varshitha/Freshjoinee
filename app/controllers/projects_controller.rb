class ProjectsController < ApplicationController


def forSaving
  records = Permission.where("company_name = ?", current_user.company_name).all
  eid = records.count+1
  @permission=Permission.new(company_name:current_user.company_name,
                             department:params[:department],personal_details:params[:personal_details],finance_details:params[:finance_details], education_details:params[:education_details], employment_details:params[:employment_details], empid:eid)

  @permission.save

  #if @permission.department == "admin" then @p = "admin" else @p= "guest" end
#byebug

  @user=User.new(name:params[:name],email:params[:email],password:params[:password],login_type:"guest",company_name:current_user.company_name, empid:eid)
@user.save

  #if @user.save then flash[:success] ="user saved" else flash[:warning]="not registered" end

end
  def second

    #@user=User.new(name:params[:name])

  end

  def first

    if(current_user)
      if(current_user.sign_in_count==1 && current_user.login_type=="admin")
        records = Permission.where("company_name = ?", current_user.company_name).all
        eid = records.count+1
        @permission=Permission.new(company_name:current_user.company_name,
                                   department:"admin",personal_details:true,finance_details:true, education_details:true, employment_details:true, empid:eid)

        @permission.save
        current_user.empid=eid
        current_user.save

      end
    end
  end
  

end
