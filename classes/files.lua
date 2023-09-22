io.output('myFile.txt') -- creates a file

io.write('Hello World!')

print('--------------------------------')

io.input('myFile.txt')

local fileData = io.read("*all") -- reads everything inside file

print(fileData)

print('--------------------------------')

local file = io.open("myfile.txt", "w") -- writes to a file

if file ~= nill then
  file:write('Hello there!')
  file:close()
else
  print('Could not open the file')
end

print('--------------------------------')

local file = io.open("myfile.txt", "r") -- reads the file

if file ~= nill then
  print(file:read("*all")) -- reads all lines
  -- print(file:read("*line")) -- reads one line
  -- print(file:read("*line")) -- reads next line
  file:close()
else
  print("Could not open the file")
end

print('--------------------------------')

local file = io.open("myfile.txt", "w") -- writes to a file

if file ~= nill then
  file:write("Goodbye")
  file:close()
else
  print("Could not open the file")
end

print('--------------------------------')

local file = io.open("myfile.txt", "a") -- appends


if file ~= nill then
  file:write("\nAppended text 2!")
  file:close()
else
  print("Could not open the file")
end

io.close() -- good practice
