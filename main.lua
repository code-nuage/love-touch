local ball = {
    x = 100,
    y = 100,
    speedX = 100,
    speedY = 150,
    radius = 50
}

function love.update(dt)
    ball.x = ball.x + ball.speedX * dt
    ball.y = ball.y + ball.speedY * dt

    if ball.x < ball.radius or ball.x > love.graphics.getWidth() - ball.radius then
        ball.speedX = -ball.speedX
    end
    if ball.y < ball.radius or ball.y > love.graphics.getHeight() - ball.radius then
        ball.speedY = -ball.speedY
    end
end

function love.draw()
    love.graphics.circle("fill", ball.x, ball.y, ball.radius)
end