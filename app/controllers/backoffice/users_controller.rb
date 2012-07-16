class Backoffice::UsersController < Backoffice::BackofficeController
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
    else
      flash[:error] = "It was not possible to create the user."
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "User destroyed."
    else
      flash[:error] = "It was not possible to destroy the user."
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "User updated."
    else
      flash[:error] = "It was not possible to update the user."
    end
  end
end
