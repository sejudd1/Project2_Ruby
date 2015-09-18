class Song < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_attached_file :track
	validates_attachment_content_type :track, :content_type => ["audio/mpeg", "audio/wav", "audio/m4a", "audio/aiff"]	

end
