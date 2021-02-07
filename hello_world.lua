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
  while top do
    print(top)
  end

end


walk()
walk()
returnToHome()

