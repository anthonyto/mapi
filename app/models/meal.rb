class Meal
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  field :name, type: String
  field :type, type: String
  field :email, type: String
  field :lat, type: Float
  field :long, type: Float
  field :address, type: String
  field :description, type: String
  field :plates, type: Integer
  
end