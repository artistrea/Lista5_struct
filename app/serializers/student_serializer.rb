class StudentSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :student_register , :email, :birthdate, :profile_pic_url

  def profile_pic_url
    if object.profile_pic.attached?
      rails_blob_path(object.profile_pic, only_path: true)
    else
      nil
    end
  end
end
