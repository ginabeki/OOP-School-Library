require './rental'
class Book
  attr_reader :rental
  attr_accessor :title, :author

  def initialize(title, _author)
    @title = title
    @book = book
    @rental = []
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end
end
