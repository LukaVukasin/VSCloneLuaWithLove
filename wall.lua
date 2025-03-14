Wall = {}

function Wall.new(self, x, y, width, height)
  local wall = {}
  wall.x = x
  wall.y = y
  wall.width = width
  wall.height = height
  
  setmetatable(wall, self)
  self.__index = self
  
  return wall
end