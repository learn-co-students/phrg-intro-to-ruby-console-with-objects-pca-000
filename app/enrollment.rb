class Enrollment
  attr_accessor :student, :course, :semester
  @@all = []

  def initialize (student, course, semester)
    @student = student #returns the student object for that given enrollment
    @course = course #returns the course object for that given enrollment
    @semester = semester #returns a string of the given semester for the enrollment, e.x. "Fall 2024"
    @@all << self
  end

  def self.all
    @@all #returns all enrollment instances
  end
end
