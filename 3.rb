class Vehicle
  def initialize(model, year)
    @model=model
    @year=year
    @start=false
  end
  def engine_start
    @start=true
  end
end

class Car < Vehicle
  @@instancias = 0
  def initialize(model,year)
    super(model,year)
    @@instancias +=1
  end
  def self.instancias_cty
    @@instancias
  end
  def engine_start
    super
    puts "El motor se ha encendido"
  end
end

10.times do
  Car.new('a','b')
end

puts Car.instancias_cty
