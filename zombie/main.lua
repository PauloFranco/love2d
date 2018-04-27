function love.load()
    sprites = {}
    sprites.player = love.graphics.newImage('sprites/player.png')
    sprites.zombie = love.graphics.newImage('sprites/zombie.png')
    sprites.bullet = love.graphics.newImage('sprites/bullet.png')
    sprites.background = love.graphics.newImage('sprites/background.png')

    player = {}
    player.x = 200
    player.y = 200
    player.speed = 180
    player.rotation = 0
end

function love.update(dt)
    if love.keyboard.isDown("s") then
        player.y = player.y + player.speed * dt
        player.rotation = math.pi/2
    end

    if love.keyboard.isDown("w") then
        player.y = player.y - player.speed * dt
        player.rotation = -math.pi/2
    end

    if love.keyboard.isDown("d") then
        player.x = player.x + player.speed * dt
        player.rotation = 0
    end

    if love.keyboard.isDown("a") then
        player.x = player.x - player.speed * dt
        player.rotation = math.pi 
    end
end

function love.draw()
    love.graphics.draw(sprites.background, 0, 0)
    love.graphics.draw(sprites.player, player.x, player.y, player.rotation)
    

end