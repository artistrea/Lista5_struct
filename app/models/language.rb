class Language < ApplicationRecord
  belongs_to :teacher
  
  validates :name, presence: true

  has_many_attached :lan_docs
end
