# frozen_string_literal: true
class Course
  attr_accessor :subject
  @@all = []

  def initialize(subject)
    @subject = subject
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_subject(subject)
    all.find { |item| item.subject == subject }
  end

  def self.all_subjects
    self.all.map { |course| course.subject }
  end

  def enrollments
    Enrollment.all.select { |enroll| enroll.course == self }
  end

  def class_list
    enrollments.map do |students|
      students.student.full_name
    end
  end
end

