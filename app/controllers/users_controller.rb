class UsersController < ApplicationController

     def show 
          set_params
     end

     def new
          @user = User.new
     end

     def edit 
          set_params
     end

     def create 
          @user = User.new(user_params)
          if @user.save 
               session[:user_id] = @user.id
               redirect_to user_path(@user), notice: "Welcome to the alpha blog #{@user.first_name} #{@user.last_name}"
          else
               render :new
          end
     end

     def update 
          set_params
          if @user.update(user_params)
               redirect_to user_path(@user)
          else
               render :edit
          end
     end

     private 

          def user_params
               params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
          end

          def set_params 
               @user = User.find(params[:id])
          end

end
