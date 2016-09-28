# We defined this sample book to work exactly as the results returned by the Google Book search
# Book.new creates an instance of a book using a list of attributes and related values that we define
# Have a look in lib/book.rb for how making a new book works
# The capital letters mean that sample book is a "constant", which means it won't change during the lifetime of the app
# Additionally, the book itself is "frozen" which means you'll get an error if you try and modify it during runtime
# Learn more about constants: http://rubylearning.com/satishtalim/ruby_constants.html
# Learn more about freezing objects: http://rubylearning.com/satishtalim/mutable_and_immutable_objects.html
SAMPLE_BOOK = Book.new(
  image_path:   "images/jacket.jpg",         # Set the image path (the image actually lives in the "public" folder)
  title:        "War and Peace",             # Set the title
  authors:      ["Bill", "Ben"],             # Set the authors. We use an "array", indicated by the square brackets
  description:  "A book about war, mainly.", # Set the description
  publisher:    "Snowbooks",                 # Set the publisher
  publish_date: Date.new(2016, 3, 23),       # Set the publish date. We use a real Date object here, so it can be formatted later
  isbn:         "9781905005123"              # Set the ISBN13
).freeze
