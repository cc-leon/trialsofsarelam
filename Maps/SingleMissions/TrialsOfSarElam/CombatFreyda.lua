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

function _MassSpell(unitName, spellID)
    g_sThread = "UnitCastGlobalSpell(".."\""..unitName.."\""..", "..spellID..")"
    startThread(_subThread); sleep(1);
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
        for i = 14, 1, -1 do CreateCreature(ATTACKER, CREATURE_MARKSMAN, 1000, 2, i) end
    elseif g_iTurn == 1 then
        CreateCreature(ATTACKER, CREATURE_PALADIN, 600, 6, 10)
        CreateCreature(ATTACKER, CREATURE_PALADIN, 600, 6, 6)
    elseif g_iTurn == 2 then
        CreateCreature(ATTACKER, CREATURE_WHITE_UNICORN, 800, 8, 14)
        CreateCreature(ATTACKER, CREATURE_WHITE_UNICORN, 800, 8, 2)
    elseif g_iTurn == 3 and g_bGrailBuilt == 0 then
        CreateCreature(ATTACKER, CREATURE_PHOENIX, 1000, 6, 12)
        CreateCreature(ATTACKER, CREATURE_PHOENIX, 1000, 6, 4)
    elseif g_iTurn == 4 then
        CreateCreature(ATTACKER, CREATURE_SERAPH, 300, 6, 14)
        CreateCreature(ATTACKER, CREATURE_ARCHANGEL, 300, 6, 2)
    elseif g_iTurn >= 5 and g_bGrailBuilt == 1 then
        g_sThread = "UnitCastGlobalSpell(\""..sUnitName.."\", "..SPELL_CONJURE_PHOENIX..")"
        startThread(_subThread);sleep(10)
    end
    if g_bGrailBuilt ==  0 then
        local mode = mod(g_iTurn, 7)
        SetUnitManaPoints(sUnitName, 800)
        sleep(180)
        if mode == 0 then
            _MassSpell(sUnitName, SPELL_MASS_HASTE)
        elseif mode == 1 then
            _MassSpell(sUnitName, SPELL_MASS_BLOODLUST)
        elseif mode == 2 then
            _MassSpell(sUnitName, SPELL_MASS_STONESKIN)
        elseif mode == 3 then
            _MassSpell(sUnitName, SPELL_MASS_BLESS)
        elseif mode == 4 then
            _MassSpell(sUnitName, SPELL_MASS_DEFLECT_ARROWS)
        elseif mode == 5 then
            _MassAimedSpell(sUnitName, ATTACKER, SPELL_CELESTIAL_SHIELD)
        elseif mode == 6 then
            _MassAimedSpell(sUnitName, ATTACKER, SPELL_REGENERATION)
        end
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

function AttackerCreatureDeath(sUnitName)
    print("Attacker died ", sUnitName, "\t", length(GetAttackerCreatures()))
    if length(GetAttackerCreatures()) == 0 then Finish(DEFENDER) end
end

function DefenderCreatureDeath(sUnitName)
    print("Defender died ", sUnitName, "\t", length(GetDefenderCreatures()))
    if length(GetDefenderCreatures()) == 0 then
        AddCreature(ATTACKER, 10, 1000000, 2, 1)
        sleep(100)
        Finish(ATTACKER)
    end
end