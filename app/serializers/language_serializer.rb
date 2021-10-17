class LanguageSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :teacher_id , :docs_url

  def docs_url
    if object.lan_docs.attached?
      rails_blob_path(object.lan_docs, only_path = true)
    else
      nil
    end
  end
end
