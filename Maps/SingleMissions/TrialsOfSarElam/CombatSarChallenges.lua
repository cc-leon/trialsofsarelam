function Start()
    sarName = GetGameVar("SarElamTrialSarChallenge")
    if sarName ~= "SarAggreth" and sarName ~= "SarShazzar"  then
        allUnits = GetUnits(DEFENDER, CREATURE)
        SetCombatPosition(allUnits[0], 13, 2)
        SetCombatPosition(allUnits[1], 13, 6)
        SetCombatPosition(allUnits[2], 13, 9)
    end
end

function DefenderCreatureMove(sUnitName)
end

function AttackerHeroMove(sUnitName)
    sarName = GetGameVar("SarElamTrialSarChallenge")
    if sarName ~= "SarShazzar" and GetUnitManaPoints(sUnitName) > 0 then SetUnitManaPoints(sUnitName, 0) end
end