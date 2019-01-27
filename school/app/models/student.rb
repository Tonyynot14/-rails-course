class Student < ApplicationRecord
    #child of course, student only in one class at a time 
    belongs_to :course
end
