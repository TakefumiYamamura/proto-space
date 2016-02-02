class UsersController < Devise::RegistrationsController
  def show
  end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end
