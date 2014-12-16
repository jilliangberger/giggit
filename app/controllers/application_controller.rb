class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  private

  def current_user

    if session[:email]
      @band_user = Band.find_by(email: session[:email])
      @venue_user = Venue.find_by(email: session[:email])
    end
    @band_user || @venue_user || session.delete(:email)
    @band_user || @venue_user
  end
end
