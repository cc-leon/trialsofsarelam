function Start()
    sarName = GetGameVar("SarChallenge")
    if (sarName == "SarIssus") or (sarName == "SarAntor") then
        allUnits = GetUnits(DEFENDER, CREATURE)
        SetCombatPosition(allUnits[0], 13, 2)
        SetCombatPosition(allUnits[1], 13, 6)
        SetCombatPosition(allUnits[2], 13, 9)
    end
end
