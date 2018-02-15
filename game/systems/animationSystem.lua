animationSystem = tiny.processingSystem(class 'AnimationSystem')

function animationSystem:init()
    self.filter = tiny.requireAll('sprite','animation')
end

function animationSystem:process(e,dt)
    local a = e.animation
    local imgs = e.sprite.imgs
    a.elapse = (a.elapse + dt) % a.total
    e.sprite.img = imgs[math.floor(((a.elapse / a.total) * #imgs) + 1)]
end

return animationSystem