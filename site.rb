# Bundler is a way of including "dependencies".
# Dependencies are openly available pieces of code that we can use to build new software
# Take a look in Gemfile.lock to see what dependencies we are using
# Learn more about Bundler here: http://bundler.io/v1.12/#guides
require "bundler/setup"
Bundler.require(:default)

# Prevent asset caching using the rack-nocache gem
# In a real website you woudln't want to do this, caching is a great way of reducing server load
# and speeding up a site for your users
# However, when we're developing a site we want to see any changes we make immediately
# This line of code prevents the web browser from hanging on to old code so we always see that latest
use Rack::Nocache

# Include some local code from the "lib" directory
# require_relative means we don't need to use the full path to each file; Ruby will work it out for us
# Learn more about requiring files here: http://rubylearning.com/satishtalim/including_other_files_in_ruby.html
require_relative "lib/google_books_api"
require_relative "lib/book"
require_relative "lib/sample_book"

# Set our web application to live at (bind to) a particular IP address and port
# We read the IP and PORT directly from the environment (ENV) and fallback to default values if
# specific values are not found in the environment
set :bind, ENV["IP"] || '0.0.0.0'
set :port, ENV["PORT"] || 8080

# Everything from here is the actual Book Findr application!

# Any time a user visits the homepage (a GET request to the route /) we want to run some code
# The code we want to run is written between do and end
# Learn more about routes in Sinatra here: http://www.sinatrarb.com/intro.html#Routes
get '/' do
  # Perform a Google Books Search with the query text a user has entered
  books = GoogleBooksApi.new.search_volumes(params["query"])

  # Display the views/home.erb template in the browser
  # We send the template some information (local variables)
  # If we don't send the information the template won't have "access" to it
  # That means we wouldn't be able to show them the results of their search
  erb :home, locals: {
    query: params["query"],     # Give the template the query, so we can use it in the "no results" message
    books: books,               # Also give the template all of the books that the query has found
    book: SAMPLE_BOOK           # Finally, give the template our sample book, which is written in lib/sample_book.rb
  }
end
