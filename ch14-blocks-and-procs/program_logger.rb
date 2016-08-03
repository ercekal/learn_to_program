def log desc, &block
  puts 'beginning ' + desc + ' ...'
  result = block.call
  puts '...' + desc + ' calculated. result is ' + result.to_s
end

log 'outer block' do
  log 'some little block' do
  1 + 4
end
  log 'yet another block' do
  'I like Thai food!'
end
'0' == 0
end
