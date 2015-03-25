class Admin::Question < ActiveRecord::Base
  belongs_to :heuristic
  has_many :answers, class_name: 'Profile::Answer'
  acts_as_list scope: :heuristic

  validates_presence_of :name

  has_attached_file :image, :styles => { :medium => "300x300>" }, 
  :storage => :dropbox,
  :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
  :default_url => "/images/:style/missing.png"
  
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
