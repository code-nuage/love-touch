Button = {}
Button.__index = Button

function Button:new(text, x, y, w, h)
    local instance = setmetatable({}, Button)
    instance.text = text
    instance.x = x
    instance.y = y
    instance.w = w
    instance.h = h
    return instance
end

function Button:isPressed(x, y)
    if x > self.x and y > self.y then
        if x < self.x + self.w and y < self.y + self.h then
            return 1
        end
    end
end

function Button:draw()
    love.graphics.rectangle("line", self.x, self.y, self.w, self.h)
    love.graphics.print(self.text, self.x + (self.w / 2), self.y + (self.h / 2))
end