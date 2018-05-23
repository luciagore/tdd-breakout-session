require_relative '../lib/Notebook'
require_relative '../lib/note'
require_relative './assert'

describe Notebook do

  describe '#add_note' do
    it 'adds a note to the notebook' do
      note = Note.new("title", "content")
      subject.add_note(note, :no_tag)
      expect(subject.notes[:no_tag]).to eq [note]
    end

    it 'adds a note with a tag to the notebook' do
      note = Note.new("title", "content")
      subject.add_note(note, :sport)
      expect(subject.notes[:sport]).to eq [note]
    end
  end

  describe '#search_tag' do
    it 'searches notebook for certain notes by tag' do
      s1 = Note.new("title", "content")
      subject.add_note(s1, :sport)
      s2 = Note.new("title", "content")
      subject.add_note(s2, :sport)
      m1 = Note.new("title", "content")
      subject.add_note(m1, :music)
      expect(subject.search_tag(:music)).to eq [m1]
      expect(subject.search_tag(:sport)).to eq [s1, s2]
    end
  end

end
