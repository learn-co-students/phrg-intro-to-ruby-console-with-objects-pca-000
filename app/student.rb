# frozen_string_literal: true

class Student
  attr_accessor :first_name, :last_name, :enrollments, :school_supplies

  STUDENTS = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @enrollments = []
    @school_supplies = []
    STUDENTS << self
  end

  def self.all
    STUDENTS
  end

  def full_name
    full_name = @first_name.to_s + " " + @last_name.to_s
  end

  def enroll(course, semester)
    enrollment = Enrollment.new(course, semester, self)
  end

  def buy_supply(kind)
    supply = SchoolSupply.new(self, kind)
  end
end
