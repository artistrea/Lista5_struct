class Api::V1::StudentsController < ApplicationController
    acts_as_token_authentication_handler_for Admin, only: [:create , :delete , :update]

    def index
        students = Student.all
        render json: students, status: :ok
    end

    def show
        student = Student.find(params[:id])
        render json: student, status: :ok
    rescue StandardError => e
        render json: {message: e.message}, status: :not_found
    end

    def create
        student = Student.create(student_params)
        student.save!
        render json: student, status: 201
    rescue StandardError => e
        render json: {message: e.message}, status: :unprocessable_entity
    end

    def update
        student = Student.find(params[:id])
        student.update!(student_params)
        render json: student, status: :ok
    rescue StandardError => e
        render json: {message: e.message}, status: :unprocessable_entity
    end

    def delete
        student = Student.find(params[:id])
        student.destroy!
        render json: student, status: :ok
    rescue StandardError => e
        render json: {message: e.message}, status: :bad_request
    end

    private

    def student_params
        params.require(:student).permit(
            :name, 
            :student_register, 
            :email, 
            :birthdate,
            :teacher_id,
            :profile_pic
        )
    end
end
