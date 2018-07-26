class EducationalsController < ApplicationController
  def view

  end

  def filldetails

  end


  def self_view
    @education=EducationalDetail.find_all_by_user_id(current_user.id)

  end

    def for_saving

      @education=EducationalDetail.new(education_type:params[:education_type],institution:params[:institution],stream:params[:stream],percentage:params[:percentage],location:params[:location],year_completion:params[:year_completion],company_name:current_user.company_name,empid:current_user.empid,user_id:current_user.id)
      @education.save

    end

  def editeducation
      @ed=EducationalDetail.find(params[:id])

  end

    def updateeducation
      @ed=EducationalDetail.find(params[:id])
      @ed.update_attributes(education_type:params[:education_type],institution:params[:institution],stream:params[:stream],percentage:params[:percentage],location:params[:location],year_completion:params[:year_completion])

    end
  end

