class AddPaperclipToSong < ActiveRecord::Migration
  def change
  	add_attachment :songs, :track
  end
end
