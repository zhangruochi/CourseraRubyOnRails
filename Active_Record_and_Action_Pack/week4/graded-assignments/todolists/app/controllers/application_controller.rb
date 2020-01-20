class ApplicationController < ActionController::Base
  before_action :ensure_login
  helper_method :logged_in?, :current_user

  protected

      def ensure_login
        redirect_to login_path unless logged_in?
      end

      def logged_in?
          session[:user_id] # nil is false
      end

      def current_user
          @current_user ||= User.find(session[:user_id])
      end
end
