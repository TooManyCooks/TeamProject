class AccessController < ApplicationController


#:confirm_logged_in,
  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]
  def index
    # display text & links
  end

  def login
    # login form
  end

  def attempt_login
    if params[:name].present? && params[:password].present?

      found_user = Doctor.where(:name => params[:name]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])

      end
      if authorized_user
        # mark user as logged in. using super cookie

        session[:doctor_id] = authorized_user.id
        session[:name] = authorized_user.name
        flash[:notice] = "You are now logged in."
        redirect_to Doctor.find_by_name(authorized_user.name)
      else
        flash[:notice] = "Invalid username/password combination."
        redirect_to(:action => 'login')
      end
    else
      flash[:notice] = "Invalid username/password combination."
      redirect_to(:action => 'login')
    end
  end

  def logout
    # mark user as logged out
    session[:doctor_id] = nil
    session[:name] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end

end
