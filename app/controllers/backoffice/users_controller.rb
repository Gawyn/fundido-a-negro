class Backoffice::UsersController < Backoffice::BackofficeController
  load_and_authorize_resource

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "User created."
      redirect_to backoffice_users_path
    else
      flash[:error] = "It was not possible to create the user."
      redirect_to :back
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "User destroyed."
      redirect_to backoffice_users_path
    else
      flash[:error] = "It was not possible to destroy the user."
      redirect_to :back
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "User updated."
      redirect_to backoffice_users_path
    else
      flash[:error] = "It was not possible to update the user."
      redirect_to :back
    end
  end
end
