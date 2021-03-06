class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:names, :surnames, :type_document_id, :document, :phone, :address,
                                                               :email, :password, :password_confirmation
)}
   devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:names, :surnames, :type_document_id, :document,
                                                                     :phone, :address, :email, :password, :password_confirmation
)}
    end

end
