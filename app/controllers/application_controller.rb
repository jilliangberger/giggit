class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  private

  def current_user
    @band ||= Band.find_by(email: session[:email]) if session[:email]
    @venue ||= Venue.find_by(email: session[:email]) if session[:email]
    @band ? @band : @venue
  end
end
