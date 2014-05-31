class Study < ActiveRecord::Base
  belongs_to :field
  belongs_to :degree

  has_many :students
end
