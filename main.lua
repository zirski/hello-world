rectangles = {}
numRects = 7
rectWidth = 20
rectSpacing = 30
rectY = 400

function love.load(args)
  for i = 1, numRects do
    local newRect = {}
    newRect.h = love.math.random(1, 200)
    table.insert(rectangles, newRect)
  end

  -- point = {
    -- x = 250,
    -- y = 250,
  -- }
end

function love.draw()
  love.graphics.setLineWidth(2)
  love.graphics.line(0, rectY, 500, rectY)
  
  -- the width of the rectanlges with their spacing
  rectBlockWidth = ((rectWidth + rectSpacing) * #rectangles) - rectSpacing
  -- the first x coordinate given the width
  initialX = (love.graphics.getWidth() - rectBlockWidth) / 2
  
  for i = 1, #rectangles do
    local rect = rectangles[i]
    local x = initialX + (i-1) * (rectWidth + rectSpacing)
    love.graphics.rectangle("line", x, rectY - rect.h, rectWidth, rect.h)
  end
end


-- remakes heights
function newHeights()
  rectangles = {}
  for i = 1, numRects do
    local newRect = {}
    newRect.h = love.math.random(1, 200)
    table.insert(rectangles, newRect)
  end
end


-- handles keypresses
function love.keypressed(key)
  if key == "escape" then
    love.event.quit(0)
  elseif key == "space" then
    newHeights()
  end
end
