class PersonalsController < ApplicationController
  def view

  end


  def filldetails

  end

  def self_view

    @p=PersonalDetail.find_by_company_name_and_empid(current_user.company_name,current_user.empid)


    #if @ad==nil
      #puts "Nil"
    #end
  end

def addressfill


end

  def addressupdate
    @personal=PersonalDetail.new(name:params[:name],email:params[:email],gender:params[:gender],dob:params[:dob],contact:params[:contact],company_name:current_user.company_name,empid:current_user.empid,user_id:current_user.id)
    @personal.save
    redirect_to('/personals/addressfill')
  end
  def for_saving

    #@personaldetail=PersonalDetail.new(params[:personaldetail])
    #@personaldetail.company_name=current_user.company_name
    #@personaldetail.empid=current_user.empid
    #@personaldetail.save!


    @address=Address.new(doorno:params[:doorno],street:params[:street],city:params[:city],country:params[:country],district:params[:district],state:params[:state],pincode:params[:pincode],address_type:params[:address_type],company_name:current_user.company_name,empid:current_user.empid,user_id:current_user.id)
    @address.save

    end

  def editpersonal

    @pe=PersonalDetail.find(params[:id])

  end

def updatepersonal

  @pers=PersonalDetail.find_by_user_id(current_user.id)
  @pers.update_attributes(name:params[:name],email:params[:email],gender:params[:gender],dob:params[:dob],contact:params[:contact])
  #@adtype=params[:address_type]
  #@addr=Address.find_by_address_type_and_user_id(@adtype,current_user.id)

end
  def updateaddress
    @addr=Address.find(params[:id])
    @addr.update_attributes(doorno:params[:doorno],street:params[:street],city:params[:city],country:params[:country],district:params[:district],state:params[:state],pincode:params[:pincode])
  end
  def address
    @ad=Address.find_all_by_user_id(current_user.id)

  end
  def editaddress
    @addd=Address.find(params[:id])
  end
  end

