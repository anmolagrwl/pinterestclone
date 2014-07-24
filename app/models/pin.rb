class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "450x450", :thumb => "150x150>" }

	validates :description, presence: true 
	validates :user_id, presence: true 
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
