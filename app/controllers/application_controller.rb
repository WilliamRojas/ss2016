class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


before_filter :require_login  
private 
def not_authenticated 
   redirect_to login_path, alert: "Por favor, registrese primero" 
end 

end