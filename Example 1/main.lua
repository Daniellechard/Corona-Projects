-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- Meta class

local gameLoopTimer
local speed = 10
Shape = {area = 0}
local size = 1

-- Base class method new


function Shape:new (o,side)
   o = o or {}
   setmetatable(o, self)
   self.__index = self
   side = side or 0
   self.area = side*side;
   return o
end

-- Base class method printArea

function Shape:printArea ()
   print("The area is ",self.area)
end

-- Creating an object
myshape = Shape:new(nil,10)

myshape:printArea()

local background = display.newImageRect( "background.jpg",800, 450 )

background.x = display.contentCenterX
background.y = display.contentCenterY


local paint = {.57,.5,1}
local circ = display.newCircle(100,100,50)
circ.fill = paint;
circ.x = 100
circ.y = 100

local circ2 = display.newCircle(100,100,50)
circ2.fill = paint;
circ2.x = 100
circ2.y = 100

local circ3 = display.newCircle(100,100,50)
circ3.fill = paint;
circ3.x = 100
circ3.y = 100

local circ4 = display.newCircle(100,100,50)
circ4.fill = paint;
circ4.x = 100
circ4.y = 100

local circ5 = display.newCircle(100,100,50)
circ5.fill = paint;
circ5.x = 100
circ5.y = 100

local circ6 = display.newCircle(100,100,50)
circ6.fill = paint;
circ6.x = 100
circ6.y = 100



local myArray ={circ,circ2}

--local rect = display.newRect(200,100,59,40)
--rect.fill = {.45}

--[[local raindrop = display.newImageRect("raindrop.png", 100,100)
raindrop.x = 100--display.contentCenterX
raindrop.y = 100--display.contentCenterY
raindrop.fill.blendMode = "multiply"

--tried to make an array
local myArray ={}

myArray[0] = 6
myArray[1] = 8
myArray[2] = 11
myArray[3] = 56

print(myArray[3])
]]--



local function gameLoop()

  for i=1,#myArray,1 do


     myArray[i].y  = myArray[i].y + speed
     -- make sure the size of the circles don't get below zero
     if(myArray[i].width < 0 or myArray[i].height < 0) then
        myArray[i].width = 0
         myArray[i].height = 0
     else
        myArray[i].width = myArray[i].width - size
        myArray[i].height = myArray[i].height - size
     end

     -- reset the circles when they hit the bottom
     if myArray[i].y >= display.contentHeight then

       myArray[i].y = 100;
       myArray[i].height = 50
       myArray[i].width = 50
       print("height " .. myArray[i].width)
       myArray[i].x = math.random(100,200)


    end
  end

   --[[circ.y  = circ.y + speed
   --tried to make the size change, also tried circ.size
   circ.z = circ.z + 100
   --trying to make circ only display while on the screen
   --while (circ.y > display.contentHeight dislay.newCircle(100,100,10))
   --trying to make the size change
   if(circ.y > display.contentHeight) or circ.y< 0 then
      size = size * -1
  end]]--
end


gameLoopTimer = timer.performWithDelay( 100, gameLoop, 0 )
