class Backend::ApplicationController < ActionController::Base
   before_action :authenticate_admin!
   layout 'admin'
   protect_from_forgery
end
