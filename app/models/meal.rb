class Meal
  include Mongoid::Document
  field :name, type: String
  field :type, type: String
  field :email, type: String
  field :latlong, type: Array
  field :address, type: String
  field :description, type: String
  
end