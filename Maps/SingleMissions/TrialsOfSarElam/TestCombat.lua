true = not nil
flag1 = true
dead = {}

sThread = ""

function subThread() parse(sThread)() end

function Prepare()
    print("TestCombat.lua lai le")
end

function Start()
    SetUnitManaPoints("attacker-hero", 200000)
    for j = 1, 5 do
        for i, unit in GetAttackerCreatures() do
            UnitCastAimedSpell("attacker-hero", SPELL_WARCRY_CALL_OF_BLOOD, unit)
        end
    end
    SetUnitManaPoints("attacker-hero", 200)
end

function DefenderHeroMove(sUnitName)
    return true
end

function DefenderCreatureMove(sUnitName)
    return true
end

function AttackerCreatureDeath(sUnitName)
    dead[length(dead) + 1] = sUnitName
end