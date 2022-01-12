



function love.load(args)
  rectIsDrawn = 0
  posX = 100
  point = {
    x = 250,
    y = 250,
  }
end

function love.draw()
  for i = 1, 5 do

    local height = love.math.random(1, 200)
    posX = posX + 0.1

    love.graphics.line(0, 250, 500, 250)
    love.graphics.setLineWidth(2)
    love.graphics.rectangle("line", posX, 250 - height, 20, height) --height measure places y coord on bottom-left corner
    love.graphics.setLineWidth(2)

    if posX == 200 then
      break
    end
  end
end
