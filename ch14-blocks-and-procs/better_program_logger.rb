$basla1 = 'Beginning '
$basla2 = ' ...'
$bitir1 = '... '
$bitir2 = 'finished, returning:'
$depth = 0

def log desc, &block
  prefix = ' '*$depth
  puts prefix + $basla1 + desc + $basla2
  result = block.call
  $depth = $depth + 1
  puts prefix + $bitir1 + desc + $bitir2 + result.to_s
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lots of love'
    end
  40 + 2
end
  log 'yet another block' do
  'I like Indian food!'
end
'0' == '0'
end
