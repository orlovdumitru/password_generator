# password_generator

def password(l, ch, num)
  pass = ''
  r = Random.new
  i = 0
  while i < l
    pass += r.rand(65..122).chr.to_s
    if pass.length == l
      return pass
    end
    
    if ch == true
      pass += ["!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "_", "+", "-", "/", "-", "=", ",", ".", "?"].sample
    end
    if pass.length == l
      return pass
    end
    
    if num == true
      pass += r.rand(0..9).to_s
    end
    if pass.length == l
      return pass
    end
    i += 1
  end
end


print "Please enter how many Characters do you want password to have: "
l = gets.to_i
puts

print "Characters y/n:"
c = gets.to_s.chomp
ch = false
if c == "y"
  ch = true
end
puts

print "Numbers y/n:"
c = gets.to_s.chomp
num = false
if c == "y"
  num = true
end
p password(l, ch, num)
