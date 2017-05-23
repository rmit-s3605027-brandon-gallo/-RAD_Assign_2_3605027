class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  $current_user = nil
  $current_course = nil
end
