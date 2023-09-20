-- for loop

for i = 1, 10 do 
  print('counting...')
  print(i)
end

print('---------------------------------------------')

for i = 0, 20, 2 do
  print(i)
end

print('---------------------------------------------')

for i = 10, 1, -2 do -- starts at 10
  print(i)
end

print('---------------------------------------------')

-- while loop 

--[[ while true do -- infinity loop, because It's aways true
  print('Gabriel')
end ]]

local count = 0

while true do
  count = count + 1
  print('Gabriel')

  if count >= 10 then
    break
  end

end


count = 0

print()

while count < 10 do
  print('Felipe')
  count = count + 1
end

print('---------------------------------------------')

-- count is equals to 10 right now

repeat -- something like a do while in Java
  print('Melissa')
  count = count + 1
until count > 10 -- while false - this will run until is true
