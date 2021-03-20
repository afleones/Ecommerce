class UserController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_user, only:
  %i[edit show change_password update_password update]

  def index
    @user = User.all
  end

  def show
   @user = User.find(params[:id])
  end

  def edit; end

  def update
    if current_user.update(user_params)
      # flash[:success] = 'Registro Actualizado'
      flash[:success] = t('.success')
      redirect_to edit_user_registration_path
    else
      # flash[:alert] = 'Error al Actualizar'
      flash[:alert] = t('.alert')
      redirect_to edit_user_registration_path
    end
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(
                                 :email,
                                 :password,
                                 :names, :surnames,
                                 :type_document_id, :phone,
                                 :address, :avatar,
                                 :tipodocumento_id,:email,
                                 :password, :password_confirmation
)
  end
end
