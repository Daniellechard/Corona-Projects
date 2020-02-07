-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- Meta class

--creates the timer variable
local gameLoopTimer
--creates the speed variable and sets it to 10
local speed = 10
--???
Shape = {area = 0}
--creates the size variable and sets it to 1
local size = 1

local xLoc = math.random(0,320)
local yLoc = math.random(0,480)
local diamSize= math.random(1,50)

-- Base class method new

--not sure what this does
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

--???
myshape:printArea()

--this makes the picture show up and specifies its size
local background = display.newImageRect( "background.jpg",800, 450 )

--centers the background
background.x = display.contentCenterX
background.y = display.contentCenterY

--making my objects white to look like snow
local paint = {1,1,1}

--creating each object for my array
local circ = display.newCircle(100,100,50)
circ.fill = paint;
circ.x = xLoc
circ.y = yLoc

local circ2 = display.newCircle(100,100,50)
circ2.fill = paint;
circ2.x = xLoc
circ2.y = yLoc

local circ3 = display.newCircle(100,100,50)
circ3.fill = paint;
circ3.x = xLoc
circ3.y = yLoc

local circ4 = display.newCircle(100,100,50)
circ4.fill = paint;
circ4.x = xLoc
circ4.y = yLoc

local circ5 = display.newCircle(100,100,50)
circ5.fill = paint;
circ5.x = xLoc
circ5.y = yLoc

local circ6 = display.newCircle(100,100,50)
circ6.fill = paint;
circ6.x = xLoc
circ6.y = yLoc

local circ7 = display.newCircle(100,100,50)
circ7.fill = paint;
circ7.x = xLoc
circ7.y = yLoc

local circ8 = display.newCircle(100,100,50)
circ8.fill = paint;
circ8.x = xLoc
circ8.y = yLoc

local circ9 = display.newCircle(100,100,50)
circ9.fill = paint;
circ9.x = xLoc
circ9.y = yLoc

local circ10 = display.newCircle(100,100,50)
circ10.fill = paint;
circ10.x = xLoc
circ10.y = yLoc

--add all 10 objects to my myArray
local myArray ={circ,circ2,circ3,circ4,circ5,circ6,circ7,circ8,circ9,circ10}


--tried to make an array
--[[
local myArray ={}

myArray[0] = 6
myArray[1] = 8
myArray[2] = 11
myArray[3] = 56

print(myArray[3])
]]--



local function gameLoop()
--[[
for every object in my array ,#myArray?, iterate + 1?
]]
  for i=1,#myArray,1 do

--the y of my array objects = the y of themselves + the speed variable
     myArray[i].y  = myArray[i].y + speed
     -- make sure the size of the circles don't get below zero

     --[[if the width of the objects in my array are less than 0 or the height of the
     objects in my array are less than 0
     then the width of my array objects = 0 and the height of my array objects = 0
     otherwise the width of my array object = their width - size and their height - size
     ]]--
     if(myArray[i].width < 0 or myArray[i].height < 0) then
        myArray[i].width = 0
         myArray[i].height = 0
     else
        myArray[i].width = myArray[i].width - size
        myArray[i].height = myArray[i].height - size
     end

     -- reset the circles when they hit the bottom

     --[[
     if the y of my array objects is more than or equal to the contentHeight
     then
     the y of my array objects = a random number between 0 and 480 which is the
     height of the screen
     and the height of my array objects = 50
     and the width of my array objects = 50
     ???
     the x of my array objects = a random number between 0 and 320 which is
     the width of the screen.
     ]]--
     if myArray[i].y >= display.contentHeight then

       myArray[i].y = math.random(0, 480);
       myArray[i].height = 50
       myArray[i].width = 50
       print("height " .. myArray[i].width)
       myArray[i].x = math.random(0,320)
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

---creates the timer using the gameLoopTimer created above and adds a time performWithDelay
--not sure what the 3 inputs in the () mean
gameLoopTimer = timer.performWithDelay( 100, gameLoop, 0 )
