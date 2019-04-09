class SchoolSupply
  attr_accessor :student, :kind
  @@all = []

  def initialize(student, kind)
    @kind = kind
    @student = student #returns the student object for that given school_supply
    @@all << self
  end

  def self.all
    @@all #returns all the school_supply instances
  end

  def self.find_all_by_kind(kind)
    all.select { |item| item.kind == kind } #returns a collection of school_supply objects with the given kind

  end
end
