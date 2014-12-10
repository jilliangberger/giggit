class SessionsController < ApplicationController
  def welcome
  end

  def login
  end

  def create
    @band = Band.find_by(email: params[:email])
    @venue = Venue.find_by(email: params[:email])
    @band ? user = @band : user = @venue
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      session[:email] = user.email
      redirect_to root_path,
        notice: "Welcome back #{user.email}."
    else
      flash[:error] = 'Invalid username or password'
      redirect_to root_path
    end
  end

  def destroy
    if
      user = current_user
      session[:id] = nil
      redirect_to root_path,
        notice: "#{user.email} has been logged out."
    end
  end
end
