g_sGuardianName = ""
g_bFirstTime = nil
g_iTurns = 0
true = not nil
g_setDeadDefender = {}

g_sThread = ""

function _subThread() parse(g_sThread)() end

function _MassAimedSpell(unitName, nSide, spellID)
    local creatures = GetCreatures(nSide)
    for i, unit in creatures do
        g_sThread = "UnitCastAimedSpell(".."\""..unitName.."\""..", "..spellID..", ".."\""..unit.."\")"
        startThread(_subThread)
        sleep(1)
    end
end

function _MassSpell(unitName, spellID)
    g_sThread = "UnitCastGlobalSpell(".."\""..unitName.."\""..", "..spellID..")"
    startThread(_subThread); sleep(1);
end

function _MassResurrect(unitName)
    _MassAimedSpell(unitName, DEFENDER, SPELL_RESURRECT)
    for unit, i in g_setDeadDefender do
        g_sThread = "UnitCastAimedSpell(".."\""..unitName.."\""..", "..SPELL_RESURRECT..", ".."\""..unit.."\")"
        startThread(_subThread)
        sleep(1)
    end
    sleep(10)
    g_setDeadDefender = {}
end

function _MassAbility(unitName, abilityID)
    g_sThread = "UseCombatAbility(".."\""..unitName.."\""..", "..abilityID..")"
    startThread(_subThread); sleep(1);
end

function _MassDispell(nSide)
    -- dispell nSide of the creatures
    local casterType = CREATURE_AIR_ELEMENTAL
    if nSide == DEFENDER then casterType = CREATURE_SPRITE end
    local casterSpell = SPELL_ABILITY_LAY_HANDS
    if nSide == ATTACKER then casterSpell = SPELL_ABILITY_HARM_TOUCH end
    local existing = {}
    local units = GetDefenderCreatures()
    for i, unit in units do
        if GetCreatureType(unit) == casterType then existing[unit] = true end
    end

    AddCreature(DEFENDER, casterType, 1, 7, 5)
    sleep(70)
    units = GetDefenderCreatures()
    local casterName = ""
    for i, unit in units do
        if GetCreatureType(unit) == casterType and (not existing[unit]) then casterName = unit end
    end

    units = GetCreatures(nSide)
    for i, unit in units do
        local ux, uy = GetUnitPosition(unit)
        g_sThread = "UseCombatAbility(".."\""..casterName.."\""..", "..casterSpell..", "..ux..", "..uy..")"
        startThread(_subThread)
        sleep(1)
    end
    RemoveCombatUnit(casterName)
    sleep(1)
end

function _CureSelf(sUnitName)
    local existing = {}
    local units = GetDefenderCreatures()
    for i, unit in units do
        if GetCreatureType(unit) == CREATURE_SPRITE then existing[unit] = true end
    end
    AddCreature(DEFENDER, CREATURE_SPRITE, 1, 7, 5)
    sleep(70)
    units = GetDefenderCreatures()
    local casterName = ""
    for i, unit in units do
        if GetCreatureType(unit) == CREATURE_SPRITE and (not existing[unit]) then casterName = unit end
    end

    local ux, uy = GetUnitPosition(sUnitName)
    g_sThread = "UseCombatAbility(".."\""..casterName.."\""..", "..SPELL_ABILITY_LAY_HANDS..", "..ux..", "..uy..")"
    startThread(_subThread)
    sleep(70)
    RemoveCombatUnit(casterName)
    sleep(1)
end

function _DisableBallista(sHeroName)
    local target = GetAttackerWarMachine(WAR_MACHINE_BALLISTA)
    if target then
        for i = 1, 20 do
            UnitCastAimedSpell(sHeroName, SPELL_MAGIC_FIST, target)
        end
    end
end

function _CommandWait(sUnitName)
    g_sThread = "setATB(".."\""..sUnitName.."\", ".."0.5"..")"
    sleep(1)
    startThread(_subThread)
end

function Prepare()
    g_sGuardianName = GetHeroName("defender-hero")
    SetGameVar("SarElamTrial"..g_sGuardianName.."Fought", "true")
    print(g_sGuardianName, " has started fighting")
end

function Start()
    g_sThread = "_DisableBallista(\"defender-hero\")"
    startThread(_subThread)
    sleep(1)
    setATB("defender-hero", 0.99)
    sleep(1)
    if g_sGuardianName == "FireGuardian" then
        SetUnitManaPoints("attacker-hero", 0)
        for i, unit in GetDefenderCreatures() do
            local unitID = GetCreatureType(unit)
            if unitID == CREATURE_FLAME_MAGE or unitID == CREATURE_FLAME_KEEPER then
                SetUnitManaPoints(unit, 0)
            end
        end
        SummonCreature(DEFENDER, CREATURE_WARLORD, 800, 13, 9)
        SummonCreature(DEFENDER, CREATURE_WARLORD, 800, 13, 1)
    elseif g_sGuardianName == "AirGuardian" then
        local units = GetDefenderCreatures()
        local dummyName = units[0]
        SetCombatPosition(dummyName, 13, 1)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_TITAN, 400, 13, 10)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_STORM_LORD, 400, 13, 8)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_GRAND_ELF, 4000, 13, 6)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_GRAND_ELF, 4000, 13, 4)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_COMBAT_MAGE, 2000, 12, 6)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_COMBAT_MAGE, 2000, 12, 5)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_COMBAT_MAGE, 2000, 12, 4)
        sleep(1)
        RemoveCombatUnit(dummyName)
        sleep(1)
    elseif g_sGuardianName == "LightGuardian" then
        local units = GetDefenderCreatures()
        local dummyName = units[0]
        SetCombatPosition(dummyName, 13, 1)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_INFERNAL_SUCCUBUS, 4000, 13, 10)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_INFERNAL_SUCCUBUS, 4000, 13, 9)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_INFERNAL_SUCCUBUS, 4000, 13, 8)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_INFERNAL_SUCCUBUS, 4000, 13, 7)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_INFERNAL_SUCCUBUS, 4000, 13, 6)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_INFERNAL_SUCCUBUS, 4000, 13, 5)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_INFERNAL_SUCCUBUS, 4000, 13, 4)
        sleep(1)
        RemoveCombatUnit(dummyName)
        sleep(1)
        _MassAimedSpell("defender-hero", ATTACKER, SPELL_MAGIC_FIST)
        sleep(100)
        _MassAimedSpell("defender-hero", ATTACKER, SPELL_MAGIC_FIST)
        sleep(500)
        _MassAimedSpell("defender-hero", ATTACKER, SPELL_MAGIC_FIST)
        sleep(1)
        SetUnitManaPoints("attacker-hero", 0)
    elseif g_sGuardianName == "WaterGuardian" then
        local units = GetDefenderCreatures()
        local dummyName = units[0]
        SetCombatPosition(dummyName, 13, 1)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_MAGI, 10000, 13, 10)
        AddCreature(DEFENDER, CREATURE_MAGI, 10000, 13, 9)
        AddCreature(DEFENDER, CREATURE_MAGI, 10000, 13, 8)
        AddCreature(DEFENDER, CREATURE_ARCH_MAGI, 10000, 13, 7)
        AddCreature(DEFENDER, CREATURE_ARCH_MAGI, 10000, 13, 6)
        AddCreature(DEFENDER, CREATURE_COMBAT_MAGE, 10000, 13, 3)
        sleep(1)
        RemoveCombatUnit(dummyName)
        sleep(1)
        AddCreature(DEFENDER, CREATURE_COMBAT_MAGE, 10000, 13, 1)
        _MassAbility("defender-hero", SPELL_ABILITY_COUNTERSPELL)
        SetUnitManaPoints("attacker-hero", 0)
        sleep(1)
    end
end

function DefenderHeroMove(sUnitName)
    if g_sGuardianName == "DarkGuardian" then
        combatSetPause(true)
        SetUnitManaPoints(sUnitName, 1800); sleep(1);
        _MassAimedSpell(sUnitName, DEFENDER, SPELL_ANTI_MAGIC)
        _MassDispell(ATTACKER)
        _MassSpell(sUnitName, SPELL_MASS_CURSE)
        _MassSpell(sUnitName, SPELL_MASS_WEAKNESS)
        _MassSpell(sUnitName, SPELL_MASS_SLOW)
        _MassSpell(sUnitName, SPELL_MASS_FORGETFULNESS)
        _MassAimedSpell(sUnitName, ATTACKER, SPELL_BLIND)
        _MassAimedSpell(sUnitName, ATTACKER, SPELL_SORROW)
        _MassAbility(sUnitName, SPELL_ABILITY_COUNTERSPELL)
        combatSetPause(nil)
    elseif g_sGuardianName == "FireGuardian" then
        combatSetPause(true)
        SetUnitManaPoints(sUnitName, 1800); sleep(1);
        if g_iTurns == 5 then _MassAimedSpell(sUnitName, DEFENDER, SPELL_ANTI_MAGIC) end
        if g_iTurns == 3 then _MassAimedSpell(sUnitName, DEFENDER, SPELL_VAMPIRISM) end
        if g_iTurns >= 7 then
            _MassAimedSpell(sUnitName, ATTACKER, SPELL_DIVINE_VENGEANCE)
            _MassAimedSpell(sUnitName, ATTACKER, SPELL_DISRUPTING_RAY)
        end
        if g_iTurns >= 3 then _MassAimedSpell(sUnitName, ATTACKER, SPELL_IMPLOSION) end
        if g_iTurns >= 2 then _MassAimedSpell(sUnitName, ATTACKER, SPELL_DEEP_FREEZE) end
        if g_iTurns >= 1 then _MassSpell(sUnitName, SPELL_ARMAGEDDON) end
        SetUnitManaPoints("attacker-hero", 0)
        combatSetPause(nil)
    elseif g_sGuardianName == "AirGuardian" then
        combatSetPause(true)
        SetUnitManaPoints(sUnitName, 1800); sleep(1);
        _MassAimedSpell(sUnitName, DEFENDER, SPELL_DISPEL)
        _MassAbility(sUnitName, SPELL_ABILITY_COUNTERSPELL)
        combatSetPause(nil)
    elseif g_sGuardianName == "EarthGuardian" then
        combatSetPause(true)
        SetUnitManaPoints(sUnitName, 1800); sleep(1);
        _MassAimedSpell(sUnitName, DEFENDER, SPELL_ANTI_MAGIC)
        _MassAimedSpell(sUnitName, ATTACKER, SPELL_DIVINE_VENGEANCE)
        combatSetPause(nil)
    elseif g_sGuardianName == "LightGuardian" then
        combatSetPause(true)
        SetUnitManaPoints(sUnitName, 1800); sleep(1);
        _MassAimedSpell(sUnitName, ATTACKER, SPELL_MAGIC_FIST)
        sleep(1)
        _MassAimedSpell(sUnitName, ATTACKER, SPELL_MAGIC_FIST)
        sleep(1)
        _MassAimedSpell(sUnitName, ATTACKER, SPELL_MAGIC_FIST)
        sleep(100)
        _MassSpell(sUnitName, SPELL_ARMAGEDDON)
        sleep(300)
        _MassAimedSpell(sUnitName, DEFENDER, SPELL_REGENERATION)
        sleep(1)
        SetUnitManaPoints("attacker-hero", 0)
        combatSetPause(nil)
    elseif g_sGuardianName == "WaterGuardian" then
        combatSetPause(true)
        SetUnitManaPoints(sUnitName, 1800); sleep(1);
        _MassSpell(sUnitName, SPELL_MASS_HASTE)
        sleep(1)
        _MassAimedSpell(sUnitName, DEFENDER, SPELL_DISPEL)
        sleep(70)
        _MassResurrect(sUnitName)
        sleep(1)
        _MassAbility(sUnitName, SPELL_ABILITY_COUNTERSPELL)
        SetUnitManaPoints("attacker-hero", 0)
        _CommandWait(sUnitName)
        combatSetPause(nil)
    end
    g_iTurns = g_iTurns + 1
    return true
end

function DefenderCreatureMove(sUnitName)
    if g_sGuardianName == "FireGuardian" then
        SetUnitManaPoints("attacker-hero", 0)
    elseif g_sGuardianName == "AirGuardian" then
        combatSetPause(true)
        _CureSelf(sUnitName)
        combatSetPause(nil)
    elseif g_sGuardianName == "LightGuardian" then
        SetUnitManaPoints("attacker-hero", 0)
        return true
    elseif g_sGuardianName == "WaterGuardian" then
        SetUnitManaPoints("attacker-hero", 0)
        SetUnitManaPoints(sUnitName, 4)
    end
end

function DefenderCreatureDeath(sUnitName)
    g_setDeadDefender[sUnitName] = true
end
