class Note < ActiveRecord::Base
  # add associations here
  belongs_to :song
  #validates_presence_of :content
end
