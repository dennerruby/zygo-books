class ApplicationController < ActionController::Base
      #before_action :authenticate_admin!, except: :index
      before_action :authenticate_user!, except: :index
      #load_and_authorize_resource
end
