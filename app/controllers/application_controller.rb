class ApplicationController < ActionController::Base
    private

    def current_user
        @current_user = User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user
    
    require 'themoviedb'
    Tmdb::Api.key("e4a333c7a78f5771a1ce712a1dfb4e8d")

    def set_config
      @configuration = Tmdb::Configuration.new
    end
end
