class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # include ApplicationHelper # http://stackoverflow.com/questions/23630949/undefined-method-full-title
  include SessionsHelper
end
