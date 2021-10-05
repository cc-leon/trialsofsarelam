g_sGuardianName = ""
g_bFirstTime = nil
g_iTurns = 0
true = not nil

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

function _DisableBallista(sHeroName)
    local target = GetAttackerWarMachine(WAR_MACHINE_BALLISTA)
    if target then
        for i = 1, 20 do
            UnitCastAimedSpell(sHeroName, SPELL_MAGIC_FIST, target)
        end
    end
end

function Prepare()
    g_sGuardianName = GetHeroName("defender-hero")
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
        SetUnitManaPoints("attacker-hero", 0)
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
        combatSetPause(nil)
    end
    g_iTurns = g_iTurns + 1
    return true
end

function DefenderCreatureMove(sUnitName)
    if g_sGuardianName == "FireGuardian" then SetUnitManaPoints("attacker-hero", 0) end
end