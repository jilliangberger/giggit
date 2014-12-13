class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  private

  def current_user
    if session[:email]
      @band ||= Band.find_by(email: session[:email])
      @venue ||= Venue.find_by(email: session[:email])
    end
    @band || @venue || session.delete(:email)
    @band || @venue
  end
end
