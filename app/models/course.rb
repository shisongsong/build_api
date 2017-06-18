class Course < ApplicationRecord
  belongs_to :teacher
  has_and_belongs_to_many :students
  before_destroy :clear_courses_students_relationships

  private

  def clear_courses_students_relationships
    self.students.clear
  end
end
