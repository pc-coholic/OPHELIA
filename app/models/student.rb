class Student < ActiveRecord::Base
  belongs_to :major
  belongs_to :minor
end
