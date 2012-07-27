class Backoffice::BackofficeController < ApplicationController
  before_filter :require_admin

  layout "backoffice"
  
  private

  def require_admin
    if !current_user
      redirect_to new_user_session_path, :notice => "You need to login to access to the backoffice."
    end
  end

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end
end
