rectangles = {}
numRects = 5
rectWidth = 30
rectSpacing = 20
rectY = 450

function love.load(args)
  newHeights()

  -- point = {
    -- x = 250,
    -- y = 250,
  -- }
end

function love.draw()
  love.graphics.setLineWidth(2)
  love.graphics.line(0, rectY, love.graphics.getWidth(), rectY)

  -- the width of the rectanlges with their spacing
  rectBlockWidth = ((rectWidth + rectSpacing) * #rectangles) - rectSpacing
  -- the first x coordinate given the width
  initialX = (love.graphics.getWidth() - rectBlockWidth) / 2

  for i, v in ipairs(rectangles) do
    local x = initialX + (i-1) * (rectWidth + rectSpacing)
    love.graphics.rectangle("line", x, rectY - v.h, rectWidth, v.h)
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
