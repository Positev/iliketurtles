while turtle.detect() do
  turtle.up()
 end
 turtle.down()
 turtle.back()
 turtle.place()
 while not turtle.detectDown() do
  turtle.back()
  turtle.down()
  turtle.place()
 end
 print("Staircase Built")