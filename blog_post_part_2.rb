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

  def self.available_orcs
    Orc.all.select do |orc|
      orc.status == "available"
    end
  end

  def self.fight_helms_deep
    available_orcs.select do |orc|
      orc.type == "Uruk-hai"
    end
  end

  def self.collect_food
    available_orcs.select do |orc|
      orc.type == "Other Orc"
    end
  end
end
