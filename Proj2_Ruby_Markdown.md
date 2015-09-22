#SongBook/SongHub
###A Networking Hub Database using Ruby On Rails for Songwriters.

##User Stories:
*Users can be songwriters and producers.

*Users will be able to sign in and create an account using their name, email address, and password.

*Users must create an account in order to leave comments and upload their songs.

*Users such as songwriters and producers will be able to upload and post their songs in the SongHub songs page list.
 
*Users are able to provide critiques, constructive feedback and support via the comments section of the songwriter page, and/or liking another users comment to the songwriters posts.

*Users will also be able to look for songs by Songwriter and Song title.

*Users will be able to establish networking connnections in the SongBook/SongHub user community via comments and email.

*Uploaded songs (mp3 song files via paperclip), will have a title, writer name, and genre.
  
*Laguages used: Ruby, Rails, HTML, CSS, Bootstrap

*MVP, has 3 working Models, Songwriter/User, Song, Comment



##SongHub ERD
![](images/Untitled%20drawing%20(1).jpg "SongHub ERD")

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


####Site Design (screen shots)
*Main Page
![](images/SongBook%20Home%20Page.png)

*User Profile Page
![](images/SongBook%20Profile%20.png)

*SongBook Users Index Page
![](images/SongBook%20Users.png)

*LogIn Page
![](images/SongBook%20LogIn.png)