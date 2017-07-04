class Book
  @@on_shelf = []
  @@on_loan = []

  attr_reader :due_date
  attr_writer :due_date

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
    @lent_out = lent_out

  end

  def borrow
    if lent_out = false
      puts "The borrow attempt has failed"
      puts "This book is due back #{due_date}"
    else
      puts "This book is available"
      @@on_loan << @@on_shelf.delete_at(title)

  end

  def return_to_library
    if lent_out = true
      @@on_shelf << @@on_loan.delete_at(title)
      puts "#{@title} is now available"
    else
      nil
  end

  def lent_out?
    @@on_shelf.include? (title)
  end

  def self.create
    @@on_shelf << Book.new(title, author, isbn)
    return @@on_shelf.last
  end

  def self.current_due_date
    if @on_loan
    puts "The due date is #{Time.now + 604800 }"
    "The due date is #{Time.now + 604800 }"
    due_date = Time.now + 604800

  end

  def self.overdue_books
    if due_date > Time.now 
  end

  def self.browse
    @@on_shelf.sample
  end

  def self.available
  end

  def self.borrowed
    return @@on_loan
  end
