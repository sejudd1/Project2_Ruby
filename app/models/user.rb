class User < ActiveRecord::Base
	has_secure_password
	has_many :songs
	has_many :comments
	has_attached_file :track
	validates_attachment_content_type :track, :content_type => ["audio/mpeg", "audio/mp3", "audio/m4a", "audio/aiff"]	

end
