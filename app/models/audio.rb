class Audio < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  has_attached_file :piste
  validates_attachment_content_type :piste, :content_type => /\Aaudio\/.*\Z/

  belongs_to :categorie_audio, class_name: 'CategorieAudio', foreign_key: 'categorie_audio_id'
  belongs_to :user


  acts_as_votable
  validates :categorie_audio_id, presence: true

  private

end
