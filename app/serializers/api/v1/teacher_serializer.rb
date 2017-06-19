class Api::V1::TeacherSerializer < Api::V1::ApplicationSerializer
  has_many :courses
end
