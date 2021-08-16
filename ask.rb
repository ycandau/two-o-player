def ask(name)
  a = rand(1..20)
  b = rand(1..20)
  print "#{name}: What does #{a} plus #{b} equal?\n> "
  answer = gets.chomp
  if answer.to_i == a + b
    puts "#{name}: YES! You are correct."
    return true
  end
  puts "#{name}: Seriously? NO!"
  return false
end
