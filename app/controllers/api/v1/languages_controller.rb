class Api::V1::LanguagesController < ApplicationController
    acts_as_token_authentication_handler_for Admin, only: [:create , :delete , :update]
    
    def index
        languages = Language.all
        render json: languages, status: :ok
    end

    def create
        language = Language.create(language_params)
        language.save!
        render json: language, status: :ok
    rescue StandardError => e
        render json: {message: e.message}, status: :unprocessable_entity
    end



    def delete
        language = Language.find(params[:id])
        language.destroy!
        render json: language, status: :ok
    rescue StandardError => e
        render json: {message: e.message}, status: :bad_request
    end

    private

    def language_params
        params.require(:language).permit(
            :name,
            :teacher_id,
            lan_docs: []
        )
    end
end
