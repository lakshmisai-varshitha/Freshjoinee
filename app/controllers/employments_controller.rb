class EmploymentsController < ApplicationController
  def view

  end

  def filldetails

  end

  def self_view

    @empl=EmploymentDetail.find_all_by_user_id(current_user.id)

  end

  def for_saving

    @employment=EmploymentDetail.new(comp_name:params[:comp_name],designation:params[:designation],from_date:params[:from_date],to_date:params[:to_date],experience:params[:experience],company_name:current_user.company_name,empid:current_user.empid,user_id:current_user.id)
    @employment.save

    end

    def editemployment

      @em=EmploymentDetail.find(params[:id])


    end

    def updateemployment


      @emp=EmploymentDetail.find(params[:id])
      @emp.update_attributes(comp_name:params[:comp_name],designation:params[:designation],from_date:params[:from_date],to_date:params[:to_date],experience:params[:experience])

    end
  end


