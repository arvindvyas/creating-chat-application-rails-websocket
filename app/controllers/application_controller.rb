class ApplicationController < ActionController::Base
vvbefore_action :authenticate_user!

end
