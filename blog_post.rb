require "pry"
class Orc

  attr_accessor :name, :status, :type
  @@all = []

  def initialize(name, status, type)
    @name = name
    @status = status
    @type = type
    @@all << self
  end

  def self.all
    @@all
  end

  def self.fight_helms_deep
    available_orcs = Orc.all.select do |orc|
      orc.status == "available"
    end

    available_orcs.select do |orc|
      orc.type == "Uruk-hai"
    end
  end

end

Orc.new("Gob", "available", "Uruk-hai")
Orc.new("George", "busy", "Uruk-hai")
Orc.new("Fred", "busy", "Other Orc")
Orc.new("Tobias", "available", "Other Orc")

binding.pry

Orc.all
