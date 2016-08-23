require "bundler/setup"
Bundler.require(:default)

require_relative "lib/helpers"
require_relative "lib/google_books_api"

get '/' do
  books = GoogleBooksApi.new.search_volumes(params["query"])

  erb :home, locals: {
    query: params["query"],
    books: books
  }
end
