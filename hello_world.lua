--turtle.refuel()

stack = {}

function stack.push(item)
    table.insert(stack, item) 
end

function stack.pop()
    return table.remove(stack)
end


movestack = stack

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
  turtle.down()
  movestack.push(turtle.up)
end


function up()
  print("up")
  turtle.up()
  movestack.push(turtle.down)
end

function walk()
  print("forward")
  turtle.forward()
  movestack.push(turtle.back)
end

function back()
  print("back")
  turtle.back()
  movestack.push(turtle.forward)
  
end

function turn_right()
  print("turn right")
  turtle.turnRight()
  movestack.push(turtle.turnLeft)
end

function turn_left()

  print("turn Left")
  turtle.turnLeft()
  movestack.push(turtle.turnRight)
end


function returnToHome()
  local top = movestack.pop()
  while top do
    top()
    top = movestack.pop()
  end

end

local index = 0
while(index < 5) do
  
  turtle.dig()
  walk()
  turtle.dig()
  turtle.digDown()
  down()
  turtle.digDown()

  index = index + 1
end

returnToHome()

