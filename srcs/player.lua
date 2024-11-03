Player = {}
Player.__index = Player

function Player:new(x, y)
    local instance = setmetatable({}, Player)
    instance.x = x
    instance.y = y
    instance.w = 32
    instance.h = 32
    return instance
end

function Player:update(dt)
    local touches = love.touch.getTouches()

    for _, id in ipairs(touches) do
        local x, y = love.touch.getPosition(id)
        if UP:isPressed(x, y) then
            self.y = self.y - 10 * dt
        end
        if DOWN:isPressed(x, y) then
            self.y = self.y + 10 * dt
        end
        if LEFT:isPressed(x, y) then
            self.x = self.x - 10 * dt
        end
        if RIGHT:isPressed(x, y) then
            self.x = self.x + 10 * dt
        end
    end
end

function Player:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
end