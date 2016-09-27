class GoogleBooksApi
  include HTTParty

  base_uri "https://www.googleapis.com"

  def search_volumes(query)
    query = query.to_s.strip
    return [] if query.empty?

    response = self.class.get("/books/v1/volumes", query: {
      q: query
    })

    json = JSON.parse(response.body, symbolize_names: true)

    if json[:totalItems] && json[:totalItems] > 0
      json[:items].map do |item|
        info = item[:volumeInfo]

        Book.new(
          title: info[:title],
          authors: info[:authors] || [],
          publisher: info[:publisher],
          publish_date: parse_date(info[:publishedDate]),
          description: info[:description],
          image_path: info[:imageLinks] ? info[:imageLinks][:thumbnail] : nil,
          isbn: extract_isbn_13(info[:industryIdentifiers])
        )
      end
    else
      []
    end
  end

  private

  def parse_date(date_string)
    Date.parse(date_string)
  rescue TypeError, ArgumentError
    Date.today
  end

  def extract_isbn_13(identifiers)
    return unless identifiers

    isbn_13 = identifiers.find do |identifier|
      identifier[:type] == "ISBN_13"
    end

    isbn_13 ? Lisbn.new(isbn_13[:identifier]).isbn_with_dash : nil
  end
end
