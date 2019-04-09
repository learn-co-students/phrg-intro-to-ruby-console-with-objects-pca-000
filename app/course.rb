class Course
  attr_accessor :subject
  @@all = []

  def initialize(subject)
    @subject = subject
    @@all << self
  end

  def self.all
    @@all #retuns all of the course instances
  end

  def self.find_by_subject(subject)
    all.find { |item| item.subject == subject } #given a strong of the subject, return the first course whose subject matches
  end

  def self.all_subjects
    self.all.map { |course| course.subject } #returns a collection of enrollment objects for the given course
  end

  def enrollments
    Enrollment.all.select { |enroll| enroll.course == self } #returns a collection of enrollment objects for the given course
  end

  def class_list
    enrollments.map do |students| #returns a colleciton of the full names of each student enrolled in the given course
      students.student.full_name
    end
  end
end
