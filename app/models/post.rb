class Post < ActiveRecord::Base
  has_attached_file :file, :styles => { :large => "800x600>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/



  belongs_to :user
  has_many :comments
  belongs_to :categorie_post
  acts_as_votable


  def inc_view
    self.nbr_views = nbr_views.to_i + 1
    self.save
  end
end
