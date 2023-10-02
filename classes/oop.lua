local function Pet(name)
  local age = 10 --> could not be a value that can be used
-- age can be used like a private variable (just like in Java)
  return {
    name = name or "Charlie", -- if they don't insert a name, the default name will be "Charlie"
    daysAlive = age * 365, --> something like a public variable (just like in Java)
    status = 'hungry',

    speak = function ()
      print('Meouw')
    end,

    feed = function (self)
      print(self.name .. ' is eating')
    end
-- olny the things on return can be part of the object
  }
end

local dog = Pet('Légolas')
local cat = Pet('Preto')
local bird = Pet()

print(dog.name)
print(cat.name)
print(bird.name)

print(dog.age) --> this won't return 10
print(dog.daysAlive)

cat.speak()
dog:feed()

-- OBS: self is the table (and looks like 'this' from Java)
-- TIP: you can use self even if you don't need It. This can make things lees complecated

print('--------------------------------------')

local function Dog(name)
  local dog = Pet(name)

  dog.breed = 'doberman'
  dog.loyalty = 0

  dog.speak = function (self)
    print('Woof')
  end

  return dog
  -- return {
  --
  --   name = name or "Charlie",
  --   breed = 'doberman',
  --   loyalty = 0,
  --
  --   speak = function ()
  --     print('Meouw')
  --   end,
  --
  --   feed = function (self)
  --     print(self.name .. ' is eating')
  --   end
  --
  -- }
  -- end
end

local doberman = Dog('Jessie')
print(doberman.name, doberman.breed)

doberman:speak()

local function Cat(name)
  local cat = Pet(name)

  cat.lazy = true

  return cat
end
