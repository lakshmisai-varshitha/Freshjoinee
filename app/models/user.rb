class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :company_name, :login_type, :name, :empid
  # attr_accessible :title, :body
  has_one :permission
  has_one :personal_detail
has_many :addresses
  has_many :educational_details
  has_many :employment_details
  has_many :insurances
  has_one :pf
end
