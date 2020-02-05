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
local circ = display.newCircle(100,100,10)
circ.fill = paint;
circ.x = 100
circ.y = 100
circ.z = 10

local circ2 = display.newCircle(100,100,10)
circ2.fill = paint;
circ2.x = 100
circ2.y = 100


--local rect = display.newRect(200,100,59,40)
--rect.fill = {.45}

--[[local raindrop = display.newImageRect("raindrop.png", 100,100)
raindrop.x = 100--display.contentCenterX
raindrop.y = 100--display.contentCenterY
raindrop.fill.blendMode = "multiply"

local myArray ={}

myArray[0] = 6
myArray[1] = 8
myArray[2] = 11
myArray[3] = 56

print(myArray[3])
]]--



local function gameLoop()

   circ.y  = circ.y + speed
   circ.z = circ.z + 100
   --while (circ.y > display.contentHeight dislay.newCircle(100,100,10))
   if(circ.y > display.contentHeight) or circ.y< 0 then
      size = size * -1
  end
end

gameLoopTimer = timer.performWithDelay( 100, gameLoop, 0 )
