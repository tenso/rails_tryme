class UserFilesController < ApplicationController
    http_basic_authenticate_with name: "admin", password: "secret", except: [:new]

    def create
        @user = User.find(params[:user_id])
        @file = @user.user_files.create(file_params)
        redirect_to request.referrer #user_path(@user)
    end

    def destroy
        @user = User.find(params[:user_id])
        @file = @user.user_files.find(params[:id])
        @file.destroy
        redirect_to request.referrer
    end

    private
    def file_params
        params.require(:user_file).permit(:name, :data, :comment)
    end
end
