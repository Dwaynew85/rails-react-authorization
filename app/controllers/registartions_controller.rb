class RegistartionsController < ApplicationController
    def create
        user = User.create!(
            name: params[:user][:name],
            emai: params[:user][:emai],
            password: params[:user][:password],
            password_confirmation: params[:user][:password_confirmation]
        )

        if user
            session[:user] = user.id
            render json: {
                status: :created,
                user: user
            }
        else
            render json: { status: : 500 }
    end

end