#SongBook/SongHub
###A Ruby On Rails Networking Database for Songwriters.

##User Stories:
*Users can be songwriters and producers.

*Users will be able to sign in and create an account using their name, email address, and password.

*Users such as songwriters and producers will be able to upload and post their songs in the SongHub songs page list.
 
*Users are able to provide critiques, constructive feedback and support via the comments section of the songwriter page, and/or liking another users comment to the songwriters posts.

*Users will also be able to look for songs by Genre.

*Users will be able to establish networking connnections in the SongBook/SongHub user community.

*Uploaded songs (mp3 song files via paperclip), will have a title, writer name, and genre.
  




##SongHub ERD
![](file://localhost/Users/stevejuddjr/GA/W06/Project2_Ruby/images/Untitled%20drawing%20(1).jpg "SongHub ERD")

####SongHub Relational Types
#####Songwriter
*Songwriter has many Songs

*Songwriter has many Genres thru GenreSongwriter Join Table

#####Song
*Song has many Comments

*Song belongs to Songwriter

*Song belongs to Genre

#####Comments

*Comment belongs to Song

*Comment has many Likes

#####Likes
*Likes belong to Comments

#####Genre
*Genre has many Songwriters thru Genresongwriter

*Genre has many Songs


####Site Design (rough draft)
*Main Page
![](file://localhost/Users/stevejuddjr/GA/W06/Project2_Ruby/images/Main.jpg)

*Songwriter Page
![](file://localhost/Users/stevejuddjr/GA/W06/Project2_Ruby/images/Songwriter.jpg)

*Songs Page
![](file://localhost/Users/stevejuddjr/GA/W06/Project2_Ruby/images/Songs.jpg)

*Genre Page
![](file://localhost/Users/stevejuddjr/GA/W06/Project2_Ruby/images/Genre.jpg)