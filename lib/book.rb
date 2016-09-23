
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

# put your method here, from snippets/7.2_methods.rb

  private

  def parse_date(date_string)
    Date.parse(date_string)
  rescue TypeError, ArgumentError
    nil
  end

end
