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
      if @band
        redirect_to band_path(@band.id),
          notice: "Welcome back #{user.email}."
      else
        redirect_to venue_path(@venue.id),
          notice: "Welcome back #{user.email}."
      end
    else
      flash[:error] = 'Invalid username or password'
      redirect_to login_path
    end
  end

  def destroy
    if user = current_user
      session.delete(:email)
      redirect_to root_path,
        notice: "#{user.email} has been logged out."
    end
  end
end
