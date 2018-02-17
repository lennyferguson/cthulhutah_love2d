return function(total)
    return "animation", 
    {
        elapse = 0.0,
        total = Option(total):orElse(1)
    }
end