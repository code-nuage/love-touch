require("srcs/player")
require("srcs/ui")

function love.load()
    PLAYER = Player:new(100, 100)
    UP = Button:new("UP", love.graphics.getWidth() - 200, love.graphics.getHeight() - 200, 100, 100)
    DOWN = Button:new("DOWN", love.graphics.getWidth() - 200, love.graphics.getHeight() - 100, 100, 100)
    LEFT = Button:new("LEFT", love.graphics.getWidth() - 300, love.graphics.getHeight() - 100, 100, 100)
    RIGHT = Button:new("RIGHT", love.graphics.getWidth() - 100, love.graphics.getHeight() - 100, 100, 100)
end

function love.update(dt)
    PLAYER:update(dt)
end

function love.draw()
    PLAYER:draw()
    UP:draw()
    DOWN:draw()
    LEFT:draw()
    RIGHT:draw()


    local touches = love.touch.getTouches()

    for _, id in ipairs(touches) do
        local x, y = love.touch.getPosition(id)
        love.graphics.circle("fill", x - 5, y - 5, 10)
    end
end