class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_authentication, unless: :devise_controller?
  before_filter :permission_check, :only => [:view]

  # controller => table column
  PERMISSION_DETAILS = {
    'personals' => 'personal_details',
    'finances'        => 'finance_details',
    'educationals'    => 'education_details',
    'employments'     => 'employment_details'
  }.freeze

  private

  def check_authentication
    redirect_to '/users/sign_in' unless current_user
  end

  def devise_controller?
    params[:controller].starts_with? 'devise/'

  end


  def permission_check

    return unless PERMISSION_DETAILS.keys.include?(params['controller'])

    field = PERMISSION_DETAILS[params['controller']]
    redirect_to '/' unless current_user.permission.send(field)
  end


end
