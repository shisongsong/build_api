class Api::V1::StudentSerializer < Api::V1::ApplicationSerializer
  has_many :courses

  class CourseSerializer < Api::V1::ApplicationSerializer
    attributes :teacher
  end
end
