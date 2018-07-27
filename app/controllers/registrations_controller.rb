class RegistrationsController < Devise::RegistrationsController
  def create

    render html: "<script>alert('No users!')</script>".html_safe

  end
end
