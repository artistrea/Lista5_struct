class Api::V1::AdminController < ApplicationController
    acts_as_token_authentication_handler_for Admin, only: [:show, :logout]

    def login
        admin = Admin.find_by!(email: params[:email])
        if admin.valid_password?(params[:password])
            render json: admin
        else
            head(401)
        end
    rescue StandardError => e
        render json: {message: e.message}, status: :not_found
    end


    def logout
        current_admin.update! authentication_token: nil
        render json: { message: 'Você deslogou com sucesso' }, status: :ok
    rescue StandardError => e
        render json: { message: e.message }, status: :bad_request
    end


    def show
        render json: current_admin
    end
end
