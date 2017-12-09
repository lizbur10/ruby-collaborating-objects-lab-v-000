
michael = Artist.new('Michael Jackson')
michael_song_one = Song.new("Rock With You")
michael.add_song(michael_song_one)
michael_song_two = Song.new("Smooth Criminal")
michael.add_song(michael_song_two)

adele = Artist.new('Adele')
adele_song_one = Song.new("Hello")
adele.add_song(adele_song_one)
adele_song_two = Song.new("Someone Like You")
adele.add_song(adele_song_two)
adele_song_three = Song.new("Rolling in the Deep")
adele.add_song(adele_song_three)

elvis = Artist.new("Elvis Costello")
elton = Artist.new("Elton John")
moby = Artist.new("Moby")

artist_1 = Artist.find_or_create_by_name("Michael Jackson")
artist_2 = Artist.find_or_create_by_name("Michael Jackson")
artist_3 = Artist.find_or_create_by_name("Drake")
dirty_diana = Song.new("Dirty Diana")
billie_jean = Song.new("Billie Jean")
artist.add_song(dirty_diana)
artist.add_song(billie_jean)
song = Song.new('Man in the Mirror')
file_name = 'Michael Jackson - Black or White - pop.mp3'
song.name = 'Thriller'
new_instance = Song.new_by_filename(file_name)
