-- Minecraft coordinates are X,Y,Z

-- leave this alone
local current_loc = vector.new(gps.locate(1500, false))

-- edit this
local home_loc = vector.new(100, 100, 100)

-- leave this alone
local displacement = current_loc - home_loc

while true
  for(current_loc, displacement, 1) do
    local forward = turtle.forward()
  if (forward == false and turtle.getFuelLimit() == 0) then
    turtle.refuel(15) 
  else
      if (turtle.detect()) then
        turtle.dig()
      end
    end
  end
end
