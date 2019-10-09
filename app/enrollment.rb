# frozen_string_literal: true

class Enrollment
  attr_accessor :course, :semester, :student
  ENROLLMENTS = []

  def initialize(course, semester, student)
    @course = course
    @semester = semester
    @student = student
    student.enrollments << self
    course.enrollments << self
    ENROLLMENTS << self
  end

  def self.all
    ENROLLMENTS
  end
end
