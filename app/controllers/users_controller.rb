class UsersController < ApplicationController
  def show
    if current_user
      render json: { email: current_user.email, user_id: current_user.id }
    else
      render json: {}, status: :unauthorized
    end
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: {message: "User created successfully"}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def update
    if current_user
      user = User.find_by_id(current_user.id)
      user.isPasswordReset = true
      user.update(update_params)

      if user.save
        render json: {message: "User updated successfully"}, status: :ok
      else
        render json: {errors: user.errors.full_messages}, status: :bad_request
      end
    else
      render json: {}, status: :unauthorized
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end

  def update_params
    params.permit(:password, :password_confirmation)
  end
end
