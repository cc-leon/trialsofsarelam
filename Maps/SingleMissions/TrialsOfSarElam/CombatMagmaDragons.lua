function Start()
    local magmas = {}
    for i, unit in GetDefenderCreatures() do
        if GetCreatureType(unit) == CREATURE_PEASANT then
            RemoveCombatUnit(unit)
        else
            magmas[length(magmas) + 1] = unit
        end
    end
    setATB(magmas[1], 0.8)
    setATB(magmas[2], 0.8)
end