class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes


  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end

  def genre_name
    self.genre ? self.genre.name : nil   #if statement
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil   #if statement
  end

  def note_contents=(content)
    content.each do |note|
      if note != ""
      @note = Note.create(content: note)
    #self.notes << @notes
<<<<<<< HEAD

=======
    
>>>>>>> 7f0ccdaf28d4961cca86de811b41601212c2c452
    self.notes.build(@note)
    end
    end
  end

  def note_contents
    self.note ? self.note.content : nil
  end

end
