class ApplicationController < ActionController::API
    def authentication_failure
        render json: { message: 'Não conseguimos autenticar o usuário' }, status: :unauthorized
    end

end
