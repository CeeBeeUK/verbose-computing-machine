class CelestialBody
	attr_accessor :type, :name
end

default_body = CelestialBody.new
default_body.type = 'planet'
bodies = Hash.new(default_body)

p bodies.default
bodies['Mars'].name = 'Mars'
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'Moon'
bodies['Venus'].name = 'Venus'

p bodies.default
p bodies

altair = CelestialBody.new
altair.name = 'Altair'
altair.type = 'star'

polaris = CelestialBody.new
polaris.name = 'Polaris'
polaris.type = 'star'

vega = CelestialBody.new
vega.name = 'Vega'
vega.type = 'star'

puts altair.name, polaris.name, vega.name
