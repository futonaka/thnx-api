class UserController < ApplicationController
  def index
    user_id = params['id']
    user = User.find_by(id: user_id)
    members = if user
      User.where(organization: user.organization).where.not(id: user_id)
    else
      nil
    end

    render :json => members 
  end

  def update
    user_id = params['id']
    result = User.find_by(id: user_id).update(params.require(:user).permit(:name, :birthday, :organization))

    render :json => result
  end

  def create
    user = User.create(params.require(:user).permit(:name, :birthday, :organization))
    render :json => user
  end
end
