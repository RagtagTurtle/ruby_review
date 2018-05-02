class Sheep
    @@count = 0
  def initialize
    @name = "Dolly"
    @@count += 1
    @id = @@count
    @awake_percentage = rand(0..100)
  end

  def id
    @id
  end

  def self.how_many
    puts "There are #{@@count} sheep"
  end

  def is_awake?
    awake_percentage > 50
  end

private #everything above is public, everything below is private 

  def awake_percentage
    @awake_percentage
  end
end

sheep_a = Sheep.new
p sheep_a.is_awake?




# Sheep.how_many
# Sheep.new
# Sheep.new
# Sheep.new
# Sheep.how_many