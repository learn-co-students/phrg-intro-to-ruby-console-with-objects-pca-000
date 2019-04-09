class Student
  attr_accessor :first_name, :last_name, :course, :semester
  @@all = []

  def initialize(first_name, last_name, course = nil, semester = nil)
    @first_name = first_name
    @last_name = last_name
    @course = course
    @semester = semester
    @@all << self
  end

  def self.all
    @@all #returns all of the student instances
  end

  def full_name
    "#{first_name} #{last_name}" #returns a string of the students full name
  end

  def enroll(course, semester)
    Enrollment.new(self, course, semester) #given a course object and a semester (as a string), creates a new enrollment and associates it with that course and student. An Enrollment belongs to a Student and a Course. The method should return the new Enrollment object
  end

  def buy_supply(kind)
    SchoolSupply.new(self, kind) #given a string of the kind of supply, creates a new school_supply and associates it with that student. A SchoolSupply belongs to a Student. The method should return the new SchoolSupply object.
  end

  def school_supplies
    SchoolSupply.all.select do |supply| #returns a collection of all of the given student's SchoolSupplies
      supply.student == self
    end
  end
end
