true = not nil
g_bGrailBuilt = 0
g_iTurn = 0
g_sDummy = ""

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

function _CommandWait(sUnitName)
    g_sThread = "setATB(".."\""..sUnitName.."\", ".."0.5"..")"
    sleep(1)
    startThread(_subThread)
end

function Prepare()
    if GetGameVar("SarElamTrialGrailBuilt") == "true" then g_bGrailBuilt = 1 end
end

function Start()
    if g_bGrailBuilt == 1 then
        CreateCreature = SummonCreature
    else
        CreateCreature = AddCreature
    end
    EnableAutoFinish(nil)
    if g_bGrailBuilt == 1 then
    end
    g_sDummy = GetAttackerCreatures()[0]
    SetCombatPosition(g_sDummy, 5, 1)
    sleep(1)
    for i = 14, 2, -2 do
        CreateCreature(ATTACKER, CREATURE_TREANT_GUARDIAN, 200, 4, i)
    end
    RemoveCombatUnit(g_sDummy)
end

function AttackerHeroMove(sUnitName)
    combatSetPause(true)
    if g_iTurn == 0 then
        for i = 14, 1, -1 do CreateCreature(ATTACKER, CREATURE_MARKSMAN, 500, 2, i) end
    elseif g_iTurn == 1 and g_bGrailBuilt == 0 then
        CreateCreature(ATTACKER, CREATURE_PALADIN, 300, 6, 10)
        CreateCreature(ATTACKER, CREATURE_PALADIN, 300, 6, 6)
    elseif g_iTurn == 2 then
        CreateCreature(ATTACKER, CREATURE_WHITE_UNICORN, 400, 8, 14)
        CreateCreature(ATTACKER, CREATURE_WHITE_UNICORN, 400, 8, 2)
    elseif g_iTurn == 3 then
        CreateCreature(ATTACKER, CREATURE_PHOENIX, 200, 6, 12)
        CreateCreature(ATTACKER, CREATURE_PHOENIX, 200, 6, 4)
    elseif g_iTurn == 4 then
        CreateCreature(ATTACKER, CREATURE_SERAPH, 200, 6, 14)
        CreateCreature(ATTACKER, CREATURE_ARCHANGEL, 200, 6, 2)
    elseif g_iTurn == 5 then
        CreateCreature(ATTACKER, CREATURE_BERSERKER, 1000, 5, 8)
        CreateCreature(ATTACKER, CREATURE_BATTLE_RAGER, 1000, 5, 7)
    elseif g_iTurn >= 6 and g_bGrailBuilt == 1 then
        g_sThread = "UnitCastGlobalSpell(\""..sUnitName.."\", "..SPELL_CONJURE_PHOENIX..")"
        startThread(_subThread);sleep(10)
    end
    if g_bGrailBuilt ==  0 then
        local mode = mod(g_iTurn, 7)
        local spellID = 0
        SetUnitManaPoints(sUnitName, 400)
        sleep(180)
        if mode == 0 then spellID = SPELL_HASTE
        elseif mode == 1 then spellID = SPELL_BLOODLUST
        elseif mode == 2 then spellID = SPELL_STONESKIN
        elseif mode == 3 then spellID = SPELL_BLESS
        elseif mode == 4 then spellID = SPELL_DEFLECT_ARROWS
        elseif mode == 5 then spellID = SPELL_CELESTIAL_SHIELD
        elseif mode == 6 then spellID = SPELL_REGENERATION
        end
        _MassAimedSpell(sUnitName, ATTACKER, spellID)
        sleep(100)
        _MassAimedSpell(sUnitName, ATTACKER, SPELL_DISPEL)
        _CommandWait(sUnitName)
    end
    g_iTurn = g_iTurn + 1
    combatSetPause(nil)
    return true
end

function AttackerCreatureMove(sUnitName)
    if GetCreatureType(sUnitName) == CREATURE_TREANT_GUARDIAN then
        return true
    end
end