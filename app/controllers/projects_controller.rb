class ProjectsController < ApplicationController


def forSaving

  @permission=Permission.new(company_name:current_user.company_name,
                             department:params[:department],personal_details:params[:personal_details],finance_details:params[:finance_details])

  @permission.save

  #if @permission.department == "admin" then @p = "admin" else @p= "guest" end
#byebug

  @user=User.new(name:params[:name],email:params[:email],password:params[:password],login_type:"guest",company_name:current_user.company_name)
@user.save

  #if @user.save then flash[:success] ="user saved" else flash[:warning]="not registered" end

end
  def second

    #@user=User.new(name:params[:name])

  end
  def first
  end
  

end
