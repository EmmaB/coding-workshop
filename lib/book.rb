
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

end
