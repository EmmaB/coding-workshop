# This is Book class. We use it to "model" the results that come back from the Google Search.
# You can learn more about classes here: https://code.tutsplus.com/tutorials/ruby-for-newbies-working-with-classes--net-15938
class Book
  # Define the attributes that a book should have
  # attr_accessor gives us a way of "getting" a value (so we can ask a book for its title)
  # attr_accessor also gives us a way of "setting" a value (so we can tell a book that its title is "War and Peace")
  # We are giving attr_accessor a list of the attributes that we want to have on our book (image path, title, authors, etc)
  # Learn more about attribute accessors here: http://www.rubyist.net/~slagell/ruby/accessors.html
  attr_accessor :image_path   ,
                :title        ,
                :authors      ,
                :description  ,
                :publisher    ,
                :publish_date ,
                :isbn

  # When we make a new Book we want to automatically populate any attributes with their provided values
  # Ruby gives us an "initialize" method, which will run everytime a new Book is created (using Book.new)
  # We set up initialize so it can receive a list of attributes with related values
  # Creating a new book with two attributes looks like: Book.new(title: "War and Peace", isbn: "9781905005123")
  def initialize(attributes = {})
    # Here we "loop around" every single attribute and value pair
    # Based on the example above, first we would deal with 'title: "War and Peace"' and then 'isbn: "9781905005123"'
    attributes.each do |attribute, value|
      # In this bit of the loop we are dealing with an individual attribute and value pair
      # Ruby lets us dynamically call other methods by using "send"
      # For now, let's imagine that "title" is the attribute and "War and Peace" is the value
      # In this case the line below would result in the following code being run:
      #   title = "War and Peace"
      # We repeat that line of code for every single pair that is passed in, until all attributes have been set to the specified values
      # In our example, the next step in the loop would run:
      #   isbn = "9781905005123"
      #
      # Learn more about "send" here: http://blog.khd.me/ruby/ruby-dynamic-method-calling/
      send("#{attribute}=", value)
    end
  end

  # put your method here, from snippets/7.2_methods.rb

end
