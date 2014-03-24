class Book

  @@title_count = 0
  
  def intialize (title, author)
    @title = title
    @author = author 
    @@title_count += 1  #every time a book is created it needs to add one more to the total amount.
  end

  def self.book_count
      @@title_count
  end

  def enshelf
    puts "This book is available: #{@title} by #{@author}"
  end

  def unself
    puts "This book is not available: #{@title} by #{@author}"
  end

end

#To specify a new book create a variable equal to Book.new("insert title here", "insert author here"). 
#Then define wether or not that book is on or off the shelf.
puts "The Library has #{Book.book_count} books"


class Shelf
  
  @@shelf_amount = 0
  
  def intialize(shelf, book)
    @shelf = shelf      #best if that shelf repersents a number rather than a phrase or string.
    @book = book
    @@shelf_amount += 1     #Should start from zero and count up
    # @@book_amount += 1     Not sure if the amount of books needs to change in the shelf class.
  end
    
  def self.shelf_count
      @@shelf_amount
  end

  def shelf_des
    puts "#{book} are on the #{shelf}"
  end
    
end
# to create a shelf, create a variable then make it equal to Shelf.new("shelf name" , "title of book").
# dupilcate shelves should not be added if multiple books need to go on that shelf.
# be sure to specify "shelf name".shelf_des to call the shelf.

puts "There are #{Shelf.shelf_count} total shelves in the Library "

class Library

  def intialize (shelf, book)
    @shelf = shelf  #the library just needs to worry about the total number of shelves and total number of books
    @book = book    
  end

  def des
    puts "Shelf #{@shelf} has #{@book}"
  end
# the library count never changes but location can
# The book class handles wether or not a book is shelved or unshelved.
end
