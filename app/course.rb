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
    self.all.find do |x|
      x.subject == subject
    end
  end

  def self.all_subjects
    @@all.uniq
  end

  def enrollments
    Enrollment.all.select do |courses|
      courses.course == self
    end
  end

  def class_list
    enrollments.map do |x|
      x.student.full_name
    end
  end

end
