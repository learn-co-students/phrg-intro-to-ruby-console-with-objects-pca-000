# frozen_string_literal: true

class Course
  attr_accessor :subject, :enrollments

  COURSES = []

  def initialize(subject)
    @subject = subject
    @enrollments = []
    COURSES << self
  end

  def self.all
    COURSES
  end

  def self.find_by_subject(subject)
    COURSES.find { |course| course.subject == subject}
  end

  def self.all_subjects
    COURSES.map { |course| course.subject } .uniq
  end

  def class_list
    @enrollments.map { |e| e.student.full_name }
  end
end
