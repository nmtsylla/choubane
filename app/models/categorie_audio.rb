class CategorieAudio < ActiveRecord::Base
  belongs_to :user
  has_many :audios
end
