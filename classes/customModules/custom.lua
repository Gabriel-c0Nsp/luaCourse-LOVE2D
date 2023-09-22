Mod = {
  sum = function (x, y)
   return x + y
  end
}

function Mod.sayHello(name)
  print('Hello ' .. name .. '!')
end

return Mod -- we need to return so It can be used outside
