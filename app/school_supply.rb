# frozen_string_literal: true

class SchoolSupply
  attr_accessor :student, :kind

  SUPPLIES = []

  def initialize(student, kind)
    @kind = kind
    @student = student
    SUPPLIES << self
    student.school_supplies << self
  end

  def self.all
    SUPPLIES
  end

  def self.find_all_by_kind(kind)
    SUPPLIES.select { |k| k.kind == kind }
  end
end
