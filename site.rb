require "bundler/setup"
Bundler.require(:default)

require_relative "lib/helpers"
require_relative "lib/google_books_api"
require_relative "lib/book"
require_relative "lib/sample_book"

set :bind, '0.0.0.0'
get '/' do
  books = GoogleBooksApi.new.search_volumes(params["query"])

  erb :home, locals: {
    query: params["query"],
    books: books,
    book: SAMPLE_BOOK
  }
end
