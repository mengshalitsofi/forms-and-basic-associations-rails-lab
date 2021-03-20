class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes


  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def note_content=(note_content)
    note_content.select do |n|
      n != ""
    end.each do |n|
      self.notes.build(content: n)
    end
end

end
