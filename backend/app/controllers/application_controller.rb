class ApplicationController < ActionController::API
  include ActionController::Flash
  before_action :authenticate_user!
end
