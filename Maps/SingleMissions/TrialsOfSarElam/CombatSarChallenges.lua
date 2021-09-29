function Start()
    sarName = GetGameVar("SarChallenge")
    if sarName ~= "SarAggreth" and sarName ~= "SarShazzar"  then
        allUnits = GetUnits(DEFENDER, CREATURE)
        SetCombatPosition(allUnits[0], 13, 2)
        SetCombatPosition(allUnits[1], 13, 6)
        SetCombatPosition(allUnits[2], 13, 9)
    end
end

function DefenderCreatureMove(sUnitName)
    sarName = GetGameVar("SarChallenge")
    if sarName ~= "SarShazzar" then SetUnitManaPoints("attacker-hero", 0) end
end
