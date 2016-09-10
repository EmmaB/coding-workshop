require "bundler/setup"
Bundler.require(:default)

require_relative "lib/helpers"
require_relative "lib/google_books_api"
set :bind, '0.0.0.0'
get '/' do
  books = GoogleBooksApi.new.search_volumes(params["query"])

  erb :home, locals: {
    query: params["query"],
    books: books,
    book: OpenStruct.new(:image_path    => "images/jacket.jpg",
                         :title         => "War and Peace",
                         :authors       => ["Bill", "Ben"],
                         :description   => nil,
                         :publisher     => "Snowbooks",
                         :publish_date  => "2016-03-23",
                         :isbn          => "9781905005123")
  }
end
