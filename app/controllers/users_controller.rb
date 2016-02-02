class UsersController < ApplicationController
  def show
    @user = current_user
    @prototypes = @user.prototypes.page(params[:page])
  end

end
