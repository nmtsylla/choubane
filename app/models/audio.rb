class Audio < ActiveRecord::Base
  belongs_to :categorie_audio
  belongs_to :user
end
