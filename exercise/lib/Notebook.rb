class Notebook

attr_accessor :notes

  def initialize
    @notes = {}
  end

  def add_note(note, tag)
    if @notes.key?(tag)
      @notes[tag].push(note)
    else
      @notes[tag] = [note]
    end
  end

  def search_tag(tag)
    @notes[tag]
  end

end
