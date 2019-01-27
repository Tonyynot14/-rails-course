class Course < ApplicationRecord
   #plural because many students, relationships stored in ruby, creates ruby methods
   has_many :students
end
