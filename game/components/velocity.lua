return function(dx, dy)
    if dx == nil then
        dx = 0
    end
    if dy == nil then
        dy = 0
    end
    return "velocity", { dx, dy }
end