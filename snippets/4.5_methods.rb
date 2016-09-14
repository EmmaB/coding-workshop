# home.erb > Challenge 4.5
# Write some methods

def uppercase_title
  title.upcase
end

def formatted_date
  publish_date.to_date.strftime('%d %B %Y')
end

# to use these methods, do the following:

# replace book.publish_date with book.formatted_date
# replace book.title with book.uppercase_title
