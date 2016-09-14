
class Book
  attr_accessor :image_path   ,
                :title        ,
                :authors      ,
                :description  ,
                :publisher    ,
                :publish_date ,
                :isbn

  def initialize(attrs)
    attrs.each do |attr,value|
      send("#{attr}=", value)
    end
  end

# put the formatted_date method here, from snippets/4.5_date_method.rb

  private

  def parse_date(date_string)
    Date.parse(date_string)
  rescue TypeError, ArgumentError
    nil
  end

end
