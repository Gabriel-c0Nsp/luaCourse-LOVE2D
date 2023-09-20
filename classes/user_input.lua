print('What is your name?')
local answer = io.read()

print('Name: ' .. answer)

print('------------------------------------')

io.write('Enter your age: ') -- input on the same line as the output
local age = io.read()

print('Age: ' .. age)
age = tonumber(age) -- I'm reciving a string for some reason...

if age >= 18 then
  print('you\'re allowed to enter')
else 
  print('please, go home!')
end

if answer == 'Gabriel' then
  print('You are so ugly, lol')
end
