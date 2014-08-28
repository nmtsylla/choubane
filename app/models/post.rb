class Post < ActiveRecord::Base
  has_attached_file :file, :styles => { :large => "800x600>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/

  belongs_to :user
  has_many :comments
  belongs_to :categorie_post, :class_name => 'CategoriePost', foreign_key: 'categorie_post'
  acts_as_votable

end
