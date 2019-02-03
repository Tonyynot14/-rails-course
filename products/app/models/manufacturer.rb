class Manufacturer < ApplicationRecord
     #plural because many students, relationships stored in ruby, creates ruby methods
   has_many :products
end
