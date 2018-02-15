
return function()
    local tbl = {}
    tbl.player = game.entities.player(10,10,4,0)
    tbl.pressedObserver = beholder.observe('keypressed', function(k,s,i) 
        tbl.player.controlled.keys_pressed[k] = true
    end)

    tbl.releasedObserver = beholder.observe('keyreleased', function(k) 
        tbl.player.controlled.keys_released[k] = true
    end)

    tbl.world = tiny.world(
        game.systems.animationSystem(),
        game.systems.rendersystem(),
        game.systems.controlSystem(),
        game.systems.movementSystem(),
        tbl.player)

    function tbl:cleanup()
        beholder.stopObserving(self.pressedObserver)
        beholder.stopObserving(self.releasedObserver)
    end

    return tbl
end