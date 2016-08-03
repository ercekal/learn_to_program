class OrangeTree

def initialize
@height = 0
@orange_count = 0
@alive = true
end

def height
if @alive
@height
else
  'Your lovely tree is dead :('
end
end


def count_oranges
  if @alive
  @orange_count
else
  'your tree is not alive to have oranges'
end
end

def one_year_passes
if @alive
  @height = @height + 1
  @orange_count = 0
  if @height > 10
    @alive = false
    'Your tree is dead now'
elsif @height > 3
  @orange_count = @orange_count + 1
"your tree grew to #{@height} and has #{@orange_count} oranges"
else
  "your tree grew to #{@height} but too young to produce oranges"
end
else
  'your tree is dead : ()'
end
end

def pick_an_orange
  if @alive
    if @orange_count > 0
  @orange_count = @orange_count - 1
  puts " you have #{@orange_count} left"
else
  'There is no oranges'
end
else
  'your tree is dead :( '
end
end
end

ot = OrangeTree.new
6.times do
ot.one_year_passes
end

puts(ot.one_year_passes)
puts(ot.height)
puts(ot.pick_an_orange)
puts(ot.count_oranges)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
