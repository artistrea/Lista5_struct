class LanguageSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :teacher_id , :docs_url

  def docs_url
    if object.docs.attached?
      array = []
      object.docs.each do |doc|
        array.append(rails_blob_path(doc, only_path: true))
      end
      return array
    else
      nil
    end
  end
end
