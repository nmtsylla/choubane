class Evenement < ActiveRecord::Base
  belongs_to :user
  has_many :photos, as: :imageable
end
