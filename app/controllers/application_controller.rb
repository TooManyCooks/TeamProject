class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= Doctor.find(session[:doctor_id])
  end

  def can_administer?
    return true #current_user.try(:admin?)
  end

private

  def confirm_logged_in
    unless session[:doctor_id]
      flash[:notice] = "Please log in."
      redirect_to(:controller => 'access', :action => 'login')
      return false #halts before action
    else
      return true
    end
  end

end
