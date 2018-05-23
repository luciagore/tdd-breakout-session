require_relative '../lib/note'
require_relative './assert'

note = Note.new('this is the title', 'this is the content')

p '#title returns the title'
Assert.isEqual(note.title, 'this is the title')

p '#content returns the content'
Assert.isEqual(note.content, 'this is the content')
