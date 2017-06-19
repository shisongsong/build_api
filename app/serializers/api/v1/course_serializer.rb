class Api::V1::CourseSerializer < Api::V1::ApplicationSerializer
  belongs_to :teacher
  has_many :students
end
