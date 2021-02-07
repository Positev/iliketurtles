--turtle.refuel()

Stack = {}



-- Create a Table with stack functions

function Stack:Create()



  -- stack table

  local t = {}

  -- entry table

  t._et = {}



  -- push a value on to the stack

  function t:push(...)

    if ... then

      local targs = {...}

      -- add values

      for _,v in ipairs(targs) do

        table.insert(self._et, v)

      end

    end

  end



  -- pop a value from the stack

  function t:pop(num)



    -- get num values from stack

    local num = num or 1



    -- return table

    local entries = {}



    -- get values into entries

    for i = 1, num do

      -- get last entry

      if #self._et ~= 0 then

        table.insert(entries, self._et[#self._et])

        -- remove last value

        table.remove(self._et)

      else

        break

      end

    end

    -- return unpacked entries

    return unpack(entries)

  end



  -- get entries

  function t:getn()

    return #self._et

  end



  -- list values

  function t:list()

    for i,v in pairs(self._et) do

      print(i, v)

    end

  end

  return t

end



movestack = Stack:Create()

function left_strafe()

  turtle.turnLeft()
  turtle.forward()
  turtle.turnRight() 
  
end

function right_strafe()

  turtle.turnRight()
  turtle.forward()
  turtle.turnLeft() 
  
end

function down()
  print("down")
  --turtle.down()
  --movestack.push(turtle.up)
  movestack.push("up")
end


function up()
  print("up")
  --turtle.up()
  --movestack.push(turtle.down)
  movestack.push("down")
end

function walk()
  print("forward")
  --turtle.forward()
  --movestack.push(turtle.back)
  movestack.push("back")
end

function back()
  print("back")
  --turtle.back()
  --movestack.push(turtle.forward)
  
  movestack.push("forward")
end

function turn_right()
  print("turn right")
  --turtle.turnRight()
  --movestack.push(turtle.turnLeft)
  movestack.push("turn Left")
end

function turn_left()

  print("turn Left")
  --turtle.turnLeft()
  --movestack.push(turtle.turnRight)

  movestack.push("turn Right")
end


function returnToHome()
  local top = movestack.pop()
  while not top == nil do
    print(top)
  end

end


walk()
walk()
returnToHome()

