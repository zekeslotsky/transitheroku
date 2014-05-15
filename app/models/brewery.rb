class Brewery
  include Mongoid::Document
  field :name, type: String
  field :address, type: String
  field :city, type: String
  field :zip, type: String
  field :transit, type: String
  field :ga_direction, type: String
  field :style, type: String
  field :beer1, type: String
  field :beer2, type: String
  field :beer3, type: String
  field :generic_growlers, type: Mongoid::Boolean
end
