turtle.refuel()

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


local index = 0

while(index < 5) do
  
  turtle.dig()
  turtle.turnRight()
  turtle.dig()
  turtle.digDown()
  turtle.forward()
  turtle.digDown()

  index = index + 1
end