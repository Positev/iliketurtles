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
  turtle.down()
  movestack.push(turtle.up)
end


function up()
  turtle.up()
  movestack.push(turtle.down)
end

function walk()
  turtle.forward()
  movestack.push(turtle.back)
end

function back()
  turtle.back()
  movestack.push(turtle.forward)
  
end

function turn_right()
  turtle.turnRight()
  movestack.push(turtle.turnLeft)
end

function turn_left()

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

function stairs(depth)
  local index = 0
  while(index < depth) do

    turtle.dig()
    walk()
    turtle.dig()
    turtle.digDown()
    down()
    turtle.digDown()

    index = index + 1
  end
end

for 




returnToHome()

