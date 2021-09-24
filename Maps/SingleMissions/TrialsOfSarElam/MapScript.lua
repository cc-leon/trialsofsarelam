g_sPath = GetMapDataPath()
g_iPlayerRace = GetPlayerRace(1)

-- Constants
INFINITY = 1e8

-- Arenas
NOOB1_ARENA = "/Scenes/CombatArenas/Subterra_Dwarven_01.xdb#xpointer(/AdventureFlybyScene)"
NOOB2_ARENA = "/Scenes/CombatArenas/Subterra_Dwarven_02.xdb#xpointer(/AdventureFlybyScene)"
BOAT_ARENA = "/Scenes/CombatArenas/Boat_Arena.xdb#xpointer(/AdventureFlybyScene)"
GRASS_ARENA = "/Scenes/CombatArenas/Grass_Small_02.xdb#xpointer(/AdventureFlybyScene)"
SAND_ARENA = "/Scenes/CombatArenas/Sand_Big_01.xdb#xpointer(/AdventureFlybyScene)"

-- Portraits
PORT_HAVEN = "/GameMechanics/RefTables/GhostMode/face_Revenant.(Texture).xdb#xpointer(/Texture)"
PORT_ACADEMY = "/GameMechanics/RefTables/GhostMode/face_Phantasm.(Texture).xdb#xpointer(/Texture)"
PORT_SYLVAN = "/GameMechanics/RefTables/GhostMode/face_Shade.(Texture).xdb#xpointer(/Texture)"
PORT_DUNGEON = "/GameMechanics/RefTables/GhostMode/face_Banshee.(Texture).(Texture).xdb#xpointer(/Texture)"
PORT_NECROPOLIS = "/GameMechanics/RefTables/GhostMode/face_Spectre.(Texture).xdb#xpointer(/Texture)"
PORT_INFERNO = "/GameMechanics/RefTables/GhostMode/face_Chimera.(Texture).xdb#xpointer(/Texture)"
PORT_FORTRESS = "/GameMechanics/RefTables/GhostMode/face_StoneSpirit.(Texture).xdb#xpointer(/Texture)"
PORT_STRONGHOLD = "/GameMechanics/RefTables/GhostMode/face_Spook.(Texture).xdb#xpointer(/Texture)"


-- Names of the eight starting towns, mapped to GetPlayerRace() result
RACE2NAME = {
    [0] = "Haven", [1] = "Preserve", [2] = "Academy", [3] = "Dungeon",
    [4] = "Necropolis", [5] = "Inferno", [6] = "Dwarves", [7] = "Stronghold"}

RACE2TOWN = {
    [0] = "HavenVillage", [1] = "SylvanVillage", [2] = "AcademyVillage", [3] = "DungeonVillage",
    [4] = "NecropolisVillage", [5] = "InfernoVillage", [6] = "FortressVillage", [7] = "StrongholdVillage"}
TOWN2RACE = {
    ["HavenVillage"] = 0, ["SylvanVillage"] = 1, ["AcademyVillage"] = 2, ["DungeonVillage"] = 3,
    ["NecropolisVillage"] = 4, ["InfernoVillage"] = 5, ["FortressVillage"] = 6, ["StrongholdVillage"] = 7}
-- Types of heroes, mapped to race id
RACE2PROF = {
    [0] = "Knight", [1] = "Avenger", [2] = "Wizard", [3] = "Walock", [4] = "Necromancer", [5] = "DemonLord",
    [6] = "Runemage", [7] = "Barbarian"}

-- Names of the eight starting garrisons, mapped to GetPlayerRace() result
RACE2GARRISON = {
    [0] = "HavenGarrison", [1] = "SylvanGarrison", [2] = "AcademyGarrison", [3] = "DungeonGarrison", 
    [4] = "NecropolisGarrison", [5] = "InfernoGarrison", [6] = "FortressGarrison", [7] = "StrongholdGarrison"}
GARRISON2RACE = {
    ["HavenGarrison"] = 0, ["SylvanGarrison"] = 1, ["AcademyGarrison"] = 2, ["DungeonGarrison"] = 3, 
    ["NecropolisGarrison"] = 4, ["InfernoGarrison"] = 5, ["FortressGarrison"] = 6, ["StrongholdGarrison"] = 7}

-- Console id for creatures, mapped to each race id
CREATURE_IDS_BY_RACE = {[0] = {1, 3, 5, 7, 9, 11, 13}, [1] = {43, 45, 47, 49, 51, 53, 55},
                        [2] = {57, 59, 61, 63, 65, 67, 69}, [3] = {71, 73,75, 77, 79, 81, 83},
                        [4] = {29, 31, 33, 35,37, 39, 41}, [5] = {15, 17, 19, 21, 23, 25, 27},
                        [6] = {92, 94, 96, 98, 100, 102, 104}, [7] = {117, 119, 121, 123, 125, 127, 129}}
INIT_CREATURE_COUNT = {[0] = {1960, 960, 800, 400, 240, 160, 80}, [1] = {960, 720, 560, 400, 240, 160, 80},
                       [2] = {1600, 1120, 720, 400, 320, 160, 80}, [3] = {560, 400, 480, 320, 240, 160, 80},
                       [4] = {1840, 1200, 720, 400, 240, 240, 120}, [5] = {1280, 1280, 640, 400, 280, 160, 80},
                       [6] = {1440, 1120, 560, 640, 280, 160, 80}, [7] = {2240, 1120, 880, 400, 400, 160, 80}}

-- Mapping for iteration of Sar family NPCs
INDEX2SAR = {"SarIssus", "SarAggreth", "SarAntor", "SarTigon", "SarBadon", "SarBahir", "SarShazzar"}
SAR2INDEX = {["SarIssus"] = 1, ["SarAggreth"] = 2, ["SarAntor"] = 3, ["SarTigon"] = 4,
             ["SarBadon"] = 5, ["SarBahir"] = 6, ["SarShazzar"] = 7}
CRYSTAL_DUMP_POS = {4, 6}
HERO_DUMP_POS = {13, 6}

-- Sar-Challenges staring army
SAR2SLOTS = {
    ["SarIssus"] = {[0] = {CREATURE_SKELETON_WARRIOR, 200}, [1] = {CREATURE_LICH_MASTER, 4},
                    [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}},
    ["SarAggreth"] = {[0] = {CREATURE_QUASIT, 6},
                      [1] = {0, 0}, [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}},
    ["SarAntor"] = {[0] = {CREATURE_CYCLOP, 1}, [1] = {CREATURE_GOBLIN_DEFILER, 60},
                    [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}},
    ["SarBahir"] = {[0] = {CREATURE_LONGBOWMAN, 100}, [1] = {CREATURE_SWORDSMAN, 6},
                    [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}},
    ["SarTigon"] = {[0] = {CREATURE_LONGBOWMAN, 50}, [1] = {CREATURE_VINDICATOR, 50},
                    [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}},
    ["SarBadon"] = {[0] = {CREATURE_SKELETON, 6},
                    [1] = {0, 0}, [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}},
    ["SarShazzar"] = {[0] = {CREATURE_SKELETON, 40},
                      [1] = {0, 0}, [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}}}

-- Combat script for Sar family
SAR_COMBAT_SCRIPT = "/"..g_sPath.."CombatSarChallenges.(Script).xdb#xpointer(/Script)";

-- Sar-Challenges reward
SAR2ARTEFACTS = {
    ["SarIssus"] = {ARTIFACT_RING_OF_LIGHTING_PROTECTION, ARTIFACT_RIGID_MANTLE, ARTIFACT_RING_OF_UNSUMMONING,
                    ARTIFACT_BOOTS_OF_INTERFERENCE},
    ["SarAggreth"] = {ARTIFACT_RING_OF_MACHINE_AFFINITY, ARTIFACT_ICEBERG_SHIELD, ARTIFACT_BEARHIDE_WRAPS,
                      ARTIFACT_VALORIOUS_ARMOR, ARTIFACT_WISPERING_RING},
    ["SarAntor"] = {ARTIFACT_SWORD_OF_RUINS, ARTIFACT_BONESTUDDED_LEATHER, ARTIFACT_SKULL_HELMET,
                    ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD, ARTIFACT_MOONBLADE, ARTIFACT_EDGE_OF_BALANCE},
    ["SarBahir"] = {SPELL_SORROW, SPELL_MAGIC_ARROW, SPELL_LAND_MINE, SPELL_TELEPORT},
    ["SarTigon"] = {ARTIFACT_BAND_OF_CONJURER, ARTIFACT_TITANS_TRIDENT, ARTIFACT_EVERCOLD_ICICLE, 
                    ARTIFACT_PHOENIX_FEATHER_CAPE, ARTIFACT_EARTHSLIDERS},
    ["SarBadon"] = {ARTIFACT_HELM_OF_CHAOS, ARTIFACT_WISPERING_RING, ARTIFACT_RING_OF_LIFE, ARTIFACT_RING_OF_LIFE,
                    ARTIFACT_NECKLACE_OF_POWER, ARTIFACT_BOOK_OF_POWER},
    ["SarShazzar"] = {ARTIFACT_GOLDEN_HORSESHOE, ARTIFACT_FOUR_LEAF_CLOVER, ARTIFACT_TAROT_DECK,
                      ARTIFACT_CROWN_OF_LEADER}}

-- Sar-Challenges for mapping creature names
CREATURE_TEXTS = {
    [CREATURE_SKELETON_WARRIOR] = "Text/Game/Creatures/Necropolis/3rd/SkeletonWarrior_Name.txt",
    [CREATURE_LICH_MASTER] = "Text/Game/Creatures/Necropolis/3rd/LichMaster_Name.txt",
    [CREATURE_QUASIT] = "Text/Game/Creatures/Inferno/3rd/Quasit_Name.txt",
    [CREATURE_CYCLOP] = "Text/Game/Creatures/Orcs/Cyclop.txt",
    [CREATURE_GOBLIN_DEFILER] = "Text/Game/Creatures/Orcs/3rd/GoblinDefiler_Name.txt",
    [CREATURE_LONGBOWMAN] = "Text/Game/Creatures/Haven/Longbowman.txt",
    [CREATURE_SWORDSMAN] = "Text/Game/Creatures/Haven/Swordsman.txt",
    [CREATURE_VINDICATOR] = "Text/Game/Creatures/Haven/Vindicator.txt",
    [CREATURE_SKELETON] = "Text/Game/Creatures/Necropolis/Skeleton.txt"}

-- Mapping for iteration of Central Area NPCs
INDEX2NPC = {"MapMaker", "Piao", "Tang", "RoundSweetPie", "Pia", "TinY", "Yanshen", "ASha", "Aldens", "SecondBro", "ThirdBro",
             "WindBellKL", "MasterTieru", "Phoenix52", "lh4122", "Caesarfox", "Realyashiro", "Vegetable", "EvilP", "MarkalNPC"}
-- NPC2INDEX = {["MapMaker"] = 1, ["Piao"] = 2, ["Tang"] = 3, ["RoundSweetPie"] = 4, ["Pia"] = 5, ["TinY"] = 6, ["YanShen"] = 7,
            -- ["ASha"] = 8, ["Aldens"] = 9, ["SecondBro"] = 10, ["ThirdBro"] = 11, ["WindBellKL"] = 12, ["MasterTieru"] = 13,}


-- Hero Bank Locations
BANKLOCATIONS = {{26, 39}, {25, 39}, {24, 39}, {23, 39}, {22, 39},
                 {22, 38}, {22, 37}, {23, 37}, {24, 37}, {25, 37}}
CRYSTAL2INDEX = {["StorageCrystal1"] = 1, ["StorageCrystal2"] = 2, ["StorageCrystal3"] = 3, ["StorageCrystal4"] = 4,
                 ["StorageCrystal5"] = 5, ["StorageCrystal6"] = 6, ["StorageCrystal7"] = 7, ["StorageCrystal8"] = 8,
                 ["StorageCrystal9"] = 9, ["StorageCrystal10"] = 10}

-- A set, store objectives for Sar family
g_setSarObjectives = {}

-- A set, record what factions have been won
g_setRaceUnlocked = {}
g_setRaceSeq = {1, 4, 5, 6, 2, 0, 3, 7}
g_iCurrRaceSeq = 1

-- A set, store heroes received Englightenment training
g_setEnlightened = {}

-- A table that stores all creatures an object has before swapping out
g_tabCreatureStored = {}

-- A set that stores all heroes in the hero bank
g_tabHeroesBanked = {}

-- Data exchange for callbacks
g_tabCallbackParams = {}

-- Quest flags
_alienQuestHero = nil

function _GetHeroRace(heroName)
    -- Return the race id of a hero
    if GetHeroSkillMastery(heroName, SKILL_TRAINING) >= 1 then
        return 0
    elseif GetHeroSkillMastery(heroName, SKILL_AVENGER) >= 1 then
        return 1
    elseif GetHeroSkillMastery(heroName, SKILL_ARTIFICIER) >= 1 then
        return 2
    elseif GetHeroSkillMastery(heroName, SKILL_INVOCATION) >= 1 then
        return 3
    elseif GetHeroSkillMastery(heroName, SKILL_NECROMANCY) >= 1 then
        return 4
    elseif GetHeroSkillMastery(heroName, SKILL_GATING) >= 1 then
        return 5
    elseif GetHeroSkillMastery(heroName, HERO_SKILL_RUNELORE) >= 1 then
        return 6
    elseif GetHeroSkillMastery(heroName, HERO_SKILL_DEMONIC_RAGE) >= 1 then
        return 7
    else
        return nil
    end
end

function _GetCreatureNumStacks(objName)
    -- Return how many stacks of creatures an object has

    local result = 0
    for i = 0, 6 do
        local creatureId, creatureCount = GetObjectArmySlotCreature(objName, i)
        if creatureId ~= 0 then result = result + 1 end
    end
    return result
end

function _GetCreatureCount(objName)
    -- Return how many creatures (total amount) an object has

    local result = 0
    for i = 0, 6 do
        local creatureId, creatureCount = GetObjectArmySlotCreature(objName, i)
        if creatureId ~= 0 then result = result + creatureCount end
    end
    return result
end

function _NormalizeOneStack(objName)
    -- If an object has only a single stack, move this stack to slot 0
    -- useful for full stacks manipulation consistency

    if _GetCreatureNumStacks(objName) == 1 then
        local creatureId, creatureCount = 0, 0

        for i = 1, 6 do
            creatureId, creatureCount = GetObjectArmySlotCreature(objName, i)
            if creatureId ~= 0 then
                AddObjectCreatures(objName, 1, 1, 0)
                sleep(1)
                RemoveObjectCreatures(objName, creatureId, creatureCount, i)
                break
            end
        end

        if creatureId ~= 0 then
            AddObjectCreatures(objName, 1, 1, 1)
            sleep(1)
            RemoveObjectCreatures(objName, 1, 1, 0)
            AddObjectCreatures(objName, creatureId, creatureCount, 0)
            sleep(1)
            RemoveObjectCreatures(objName, 1, 1, 1)
        end
    end
end

function _SetCreatureSlots(objName, newCreatures)
    -- Given slots information newCreatures (a dict with slot number to a list which has creature id and amount)
    -- Set the object's stacks to be the same as newCreatures
    -- Must be blocked

    _NormalizeOneStack(objName)

    local creatureId, creatureCount = 0, 0

    for i = 1, 6 do
        creatureId, creatureCount = GetObjectArmySlotCreature(objName, i)
        if creatureId ~= 0 then RemoveObjectCreatures(objName, creatureId, creatureCount, i) end
        if newCreatures[i][1] ~= 0 then 
            AddObjectCreatures(objName, newCreatures[i][1], newCreatures[i][2], i)
            sleep(1)
        end
    end

    sleep(1)
    local needCleanUp = nil
    if _GetCreatureNumStacks(objName) == 1 then
        AddObjectCreatures(objName, 1, 1, 1)
        sleep(1)
        needCleanUp = true
    end

    creatureId, creatureCount = GetObjectArmySlotCreature(objName, 0)
    if creatureId ~= 0 then RemoveObjectCreatures(objName, creatureId, creatureCount, 0) end
    if newCreatures[0][1] ~= 0 then
        AddObjectCreatures(objName, newCreatures[0][1], newCreatures[0][2], 0)
        sleep(1)
    end
    if needCleanUp then RemoveObjectCreatures(objName, 1, 1, 1) end
end

function _GetCreatureSlots(objName)
    -- Return slots information newCreatures (a dict with slot number to a list which has creature id and amount)
    -- of the object
    result = {}

    for i = 0, 6 do
        local creatureId, creatureCount = GetObjectArmySlotCreature(objName, i)
        result[i] = {creatureId, creatureCount}
    end

    return result
end

function _ConfiscateWarMachines(heroName)
    RemoveHeroWarMachine(heroName, WAR_MACHINE_BALLISTA)
    RemoveHeroWarMachine(heroName, WAR_MACHINE_FIRST_AID_TENT)
    RemoveHeroWarMachine(heroName, WAR_MACHINE_AMMO_CART)
end

function _CheckAllSpells(heroName)
    noSpell = {[16] = true, [22] = true, [27] = true, [30] = true, [33] = true, [36] = true, [37] = true} -- 1 ~ 43
    yesSpell = {48, 234, 235, 236, 237, 277, 278, 279, 280, 281, 283}
    local result = 43 - length(noSpell) + length(yesSpell)

    for i = 1, 43 do
        if not noSpell[i] then 
            if KnowHeroSpell(heroName, i) then result = result - 1 end
        end
    end

    for i, spellID in yesSpell do
        if KnowHeroSpell(heroName, spellID) then result = result - 1 end
    end

    return result
end

function _CheckAllRunes(heroName)
    local result = 258 - 249 + 1

    for i = 249, 258 do
        if KnowHeroSpell(heroName, i) then result = result - 1 end
    end

    return result
end

function _CheckAllWarCries(heroName)
    local result = 295 - 290 + 1

    for i = 295, 290 do
        if KnowHeroSpell(heroName, i) then result = result - 1 end
    end

    return result
end

function _CheckAllSphinxes(heroName)
end

function _GetHeroInfo(heroName) 
    -- Return level in integer, Race and Name in Texts
    local result = {GetHeroLevel(heroName)}
    local race = _GetHeroRace(heroName)
    result[2] = "GameMechanics/RefTables/HeroClass/HeroClass"..RACE2PROF[race]..".txt"
    result[3] = "Text/Game/Heroes/Persons/"..RACE2NAME[race].."/"..heroName.."/Name.txt"
    return result
end

function GarrisonVisitingMessageTrigger(heroName, garrisonName)
    -- Triggered when any hero visits a garrison
    -- Give error message when player haven't own the town yet
    if g_setRaceUnlocked[GARRISON2RACE[garrisonName]] == nil then
        MessageBox(g_sPath.."GarrisonDenied.txt")
    end
end

function GarrisonCapturedTrigger(oldOwner, newOwner, heroName, garrisonName)
    -- Triggered when any hero first come out of the tavern
    -- This completes the startup objective
    -- Should move the hero with initial bonus items to the floor, and start objectives
    -- Also gives warnings if the player is using a barbarian hero

    SetObjectiveProgress("StartupObjective", 1)

    if RACE2PROF[_GetHeroRace(heroName)] == "Barbarian" then
        MessageBox(g_sPath.."WarningToOrcs.txt")
    end

    BlockGame()
    SetObjectPos(heroName, 46, 39, 0)
    SetObjectRotation(heroName, 0)
    MoveCamera(46, 39, 0, 80, 3.14/3, 0, 1, 1)
    sleep(1)
    local origPosX, origPosY = GetObjectPos("SarIssus")
    SetObjectPos("SarIssus", 46, 38)
    SetObjectRotation("SarIssus", 180)
    MoveCamera(45, 38, 0, 80, 3.14/3, 0, 1, 1)
    sleep(1)
    UnblockGame()

    MessageBox(g_sPath.."SarIssusGreeting.txt")
    BlockGame()
    SetObjectPos("SarIssus", origPosX, origPosY)
    SetObjectRotation("SarIssus", 90)
    sleep(1)

    SetObjectPos("ResBonusWood", 45, 37, 0)
    SetObjectPos("ResBonusOre", 46, 37, 0)
    SetObjectPos("ResBonusMercury", 47, 37, 0)
    SetObjectPos("ResBonusCrystal", 45, 36, 0)
    SetObjectPos("ResBonusSulfur", 46, 36, 0)
    SetObjectPos("ResBonusGem", 47, 36, 0)
    SetObjectPos("ResBonusGold", 45, 35, 0)
    SetObjectPos("ArtBonusSarStaff", 46, 35, 0)
    SetObjectPos("ArtBonusSarCrown", 47, 35, 0)
    SetObjectPos("ArtBonusSarRing", 45, 34, 0)
    SetObjectPos("ArtBonusSarRobe", 46, 34, 0)
    SetObjectPos("ArtBonusDarkRitualScroll", 47, 34, 0)
    UnblockGame()
    MessageBox(g_sPath.."SarIssusBonus.txt")

    SetObjectiveState("CompleteSarFamily", OBJECTIVE_ACTIVE)
    Trigger(OBJECT_CAPTURE_TRIGGER, garrisonName, nil)
end

function SarFamilyAutoComplete(heroName)
    local expReward = {1980, 1610, 1980, 2000, 15792, 3120, 12000}

    for i = 1, 7 do
        local sarName = INDEX2SAR[i]
        local questName = sarName.."Challenge"
        if GetObjectiveState(questName) ~= OBJECTIVE_COMPLETED then
            ChangeHeroStat(heroName, 0, expReward[i])
            for j, art in SAR2ARTEFACTS[sarName] do
                if sarName == "SarBahir" then
                    TeachHeroSpell(heroName, art)
                else
                    GiveArtefact(heroName, art)
                end
            end
        end
        
        if GetObjectiveState(questName) < OBJECTIVE_ACTIVE then
            SetObjectiveState(questName, OBJECTIVE_ACTIVE)
        end
        sleep(1)
        if GetObjectiveState(questName) == OBJECTIVE_ACTIVE then
            SetObjectiveState(questName, OBJECTIVE_COMPLETED)
        end
        if IsObjectiveVisible(questName) then
            SetObjectiveVisible(questName, nil)
        end
    end

    for i = 0, 7 do
        if GetObjectOwner(RACE2TOWN[i]) ~= 1 then SetObjectOwner(RACE2TOWN[i], 1) end
        if not IsObjectEnabled(RACE2GARRISON[i]) then SetObjectEnabled(RACE2GARRISON[i], true) end
        if GetObjectOwner(RACE2GARRISON[i]) ~= 1 then SetObjectOwner(RACE2GARRISON[i], true) end
    end

    if GetObjectiveState("CompleteSarFamily") < OBJECTIVE_ACTIVE then
        SetObjectiveState("CompleteSarFamily", OBJECTIVE_ACTIVE)
    end
    sleep(1)
    if GetObjectiveState("CompleteSarFamily") == OBJECTIVE_ACTIVE then
        SetObjectiveState("CompleteSarFamily", OBJECTIVE_COMPLETED)
    end
end

function SarFinishedCallback(heroName, isWin)
    sarName = GetGameVar("SarChallenge")
    if isWin then
        local fufilled = true

        if sarName == "SarIssus" then
            fufilled = (GetObjectCreatures(heroName, CREATURE_SKELETON_WARRIOR) >= 200)
        elseif sarName == "SarAntor" then
            fufilled = (GetObjectCreatures(heroName, CREATURE_CYCLOP) >= 1)
        elseif sarName == "SarBahir" then
            fufilled = (GetObjectCreatures(heroName, CREATURE_LONGBOWMAN) >= 100)
        elseif sarName == "SarTigon" then
            fufilled = (GetObjectCreatures(heroName, CREATURE_LONGBOWMAN) >= 50)
        end

        if fufilled then
            if sarName == "SarBahir" then
                MessageBox(g_sPath.."SarFamilyAwardMagic.txt")
            else
                MessageBox(g_sPath.."SarFamilyAwardArtefact.txt")
            end
            SetObjectiveState(sarName.."Challenge", OBJECTIVE_COMPLETED)
            for i, art in SAR2ARTEFACTS[sarName] do
                if sarName == "SarBahir" then
                    TeachHeroSpell(heroName, art)
                else
                    GiveArtefact(heroName, art)
                end
            end

            while g_iCurrRaceSeq <= 8 do
                local currRace = g_setRaceSeq[g_iCurrRaceSeq]
                if g_setRaceUnlocked[currRace] == nil then
                    BlockGame()
                    local x, y, l = GetObjectPos(RACE2TOWN[currRace])
                    MoveCamera(x, y, l, 80, 3.14/3, 0, 0, 1)
                    sleep(20)
                    SetObjectOwner(RACE2TOWN[currRace], 1)
                    SetObjectEnabled(RACE2GARRISON[currRace], true)
                    SetObjectOwner(RACE2GARRISON[currRace], true)
                    sleep(10)
                    UnblockGame()
                    g_setRaceUnlocked[currRace] = 1
                    g_iCurrRaceSeq = g_iCurrRaceSeq + 1
                    break
                end
                g_iCurrRaceSeq = g_iCurrRaceSeq + 1
            end

        else
            MessageBox({g_sPath.."FailReasonSarFamily.txt"; c_amt = 200, c_name = CREATURE_TEXTS[CREATURE_SKELETON_WARRIOR]})
            SetObjectiveState(sarName.."Challenge", OBJECTIVE_FAILED)
        end

        BlockGame()
        _SetCreatureSlots(heroName, g_tabCreatureStored)
        UnblockGame()
    else
        SetObjectiveState(sarName.."Challenge", OBJECTIVE_FAILED)
    end

    local sarCompleted = true
    for i = 1, 7 do
        if GetObjectiveState(INDEX2SAR[i].."Challenge") < OBJECTIVE_COMPLETED then
            sarCompleted = nil
            break
        end
    end

    if sarCompleted then
        for i = 1, 7 do
            SetObjectiveVisible(INDEX2SAR[i].."Challenge", nil)
        end
        SetObjectiveState("CompleteSarFamily", OBJECTIVE_COMPLETED)
    end

end

function SarFamilyStartFight()
    local heroName, sarName = g_tabCallbackParams[1], g_tabCallbackParams[2]
    SetGameVar("SarChallenge", sarName)

    BlockGame()
    g_tabCreatureStored = _GetCreatureSlots(heroName)
    _SetCreatureSlots(heroName, SAR2SLOTS[sarName])

    if sarName ~= "SarShazzar" then
        _ConfiscateWarMachines(heroName)
    end

    ChangeHeroStat(heroName, 8, -INFINITY)
    if sarName == "SarTigon" then
        ChangeHeroStat(heroName, 8, 10)
    elseif sarName == "SarBadon" then
        ChangeHeroStat(heroName, 8, 70)
    elseif sarName == "SarShazzar" then
        ChangeHeroStat(heroName, 8, INFINITY)
    end

    UnblockGame()

    if sarName == "SarIssus" then
        StartCombat(heroName, nil, 3, CREATURE_CERBERI, 20,CREATURE_CERBERI, 20, CREATURE_CERBERI, 20,
                    SAR_COMBAT_SCRIPT, "SarFinishedCallback", NOOB1_ARENA)
    elseif sarName == "SarAggreth" then
        StartCombat(heroName, nil, 1, CREATURE_ASSASSIN, 70,
                    SAR_COMBAT_SCRIPT, "SarFinishedCallback", NOOB2_ARENA)
    elseif sarName == "SarAntor" then
        StartCombat(heroName, nil, 3,
                    CREATURE_FIREBREATHER_HOUND, 20,CREATURE_FIREBREATHER_HOUND, 20, CREATURE_FIREBREATHER_HOUND, 20,
                    SAR_COMBAT_SCRIPT, "SarFinishedCallback", NOOB1_ARENA)
    elseif sarName == "SarBahir" then
        StartCombat(heroName, nil, 2, CREATURE_SHARP_SHOOTER, 80, CREATURE_MILITIAMAN, 1, 
                    SAR_COMBAT_SCRIPT, "SarFinishedCallback", SAND_ARENA)
    elseif sarName == "SarTigon" then
        StartCombat(heroName, nil, 1, CREATURE_LONGBOWMAN, 100,
                    SAR_COMBAT_SCRIPT, "SarFinishedCallback", GRASS_ARENA)
    elseif sarName == "SarBadon" then
        StartCombat(heroName, nil, 1, CREATURE_MAGMA_DRAGON, 48,
                    SAR_COMBAT_SCRIPT, "SarFinishedCallback", NOOB2_ARENA)
    elseif sarName == "SarShazzar" then
        StartCombat(heroName, nil, 4, CREATURE_BALOR, 20, CREATURE_BALOR, 20, CREATURE_BALOR, 20, CREATURE_BALOR, 20,
                    SAR_COMBAT_SCRIPT, "SarFinishedCallback", NOOB1_ARENA)
    else
        print("Error! in SarFamilyStartFight! ", heroName, " ", sarName)
    end

end

function SarFamilyVisitsTrigger(heroName, sarName)
    if GetObjectiveState("CompleteSarFamily") == OBJECTIVE_ACTIVE then
        if GetObjectiveProgress("CompleteSarFamily") == 0 then
            if sarName == "SarIssus" then
                SetObjectiveProgress("CompleteSarFamily", 1)
                MessageBox(g_sPath.."SarIssusVisited.txt")
            else
                MessageBox(g_sPath.."SarIssusNotVisited.txt")
                return
            end
        end
    elseif GetObjectiveState("CompleteSarFamily") < OBJECTIVE_ACTIVE then
        print("Error! Player is not supposed to reach the sar area yet")
        return
    end

    local sarQuest = sarName.."Challenge"
    local sarQuestState = GetObjectiveState(sarQuest)
    if sarQuestState < OBJECTIVE_ACTIVE then
        SetObjectiveState(sarQuest, OBJECTIVE_ACTIVE)
        MessageBox(g_sPath..sarQuest.."Description.txt")
        MessageBox(g_sPath..sarQuest.."Description2.txt")
        g_tabCallbackParams = {heroName, sarName}
        QuestionBox({g_sPath.."SarFamilyAskReady.txt"; sarname = g_sPath.."Name"..sarName..".txt"}, "SarFamilyStartFight", "")
    elseif sarQuestState == OBJECTIVE_ACTIVE then
        g_tabCallbackParams = {heroName, sarName}
        QuestionBox({g_sPath.."SarFamilyAskReady.txt"; sarname = g_sPath.."Name"..sarName..".txt"}, "SarFamilyStartFight", "")
    elseif sarQuestState == OBJECTIVE_COMPLETED then
        MessageBox({g_sPath.."SarFamilyDoneWith.txt"; sarname = g_sPath.."Name"..sarName..".txt"})
    elseif sarQuestState == OBJECTIVE_FAILED then
        MessageBox({g_sPath.."SarFamilyDisappointed.txt"; sarname = g_sPath.."Name"..sarName..".txt"})
    end
end

function NPCMapMakerSarFamilyCallback()
    SarFamilyAutoComplete(g_tabCallbackParams[1])
end

function NPCMapMakerCallback(pNum, cNum)
    if cNum == 1 then
        MessageBox(g_sPath.."MapMakerOption2Description.txt")
    elseif cNum == 2 then
        local allDone = true
        local heroName = g_tabCallbackParams[1]

        local objState = GetObjectiveState("LearnAllSpells")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."LearnAllSpellsDescription2.txt")
            SetObjectiveState("LearnAllSpells", OBJECTIVE_ACTIVE)
            allDone = nil
        elseif objState == OBJECTIVE_ACTIVE then
            local remainingSpells = _CheckAllSpells(heroName)
            if remainingSpells <= 0 then
                MessageBox(g_sPath.."MapMakerOption3AllSpellsOK.txt")
                TeachHeroSpell(heroName, SPELL_REGENERATION)
                SetObjectiveState("LearnAllSpells", OBJECTIVE_COMPLETED)
            else
                MessageBox({g_sPath.."MapMakerOption3AllSpellsNotOK.txt"; n_spell = remainingSpells})
            end
            allDone = nil
        end

        objState = GetObjectiveState("LearnAllRunes")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."LearnAllRunesDescription2.txt")
            SetObjectiveState("LearnAllRunes", OBJECTIVE_ACTIVE)
            allDone = nil
        elseif objState == OBJECTIVE_ACTIVE then
            local remainingSpells = _CheckAllRunes(heroName)
            if remainingSpells <= 0 then
                local heroName = g_tabCallbackParams[1]
                MessageBox(g_sPath.."MapMakerOption3AllRunesOK.txt")
                TeachHeroSpell(heroName, SPELL_CELESTIAL_SHIELD)
                SetObjectiveState("LearnAllRunes", OBJECTIVE_COMPLETED)
            else
                MessageBox(g_sPath.."MapMakerOption3AllRunesNotOK.txt")
            end
            allDone = nil
        end

        objState = GetObjectiveState("LearnAllWarCries")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."LearnAllWarCriesDescription2.txt")
            SetObjectiveState("LearnAllWarCries", OBJECTIVE_ACTIVE)
            allDone = nil
        elseif objState == OBJECTIVE_ACTIVE then
            local remainingSpells = _CheckAllWarCries(heroName)
            if remainingSpells <= 0 then
                local heroName = g_tabCallbackParams[1]
                MessageBox(g_sPath.."MapMakerOption3AllWarCriesOK.txt")
                GiveArtefact(heroName, ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING)
                GiveArtefact(heroName, ARTIFACT_DWARVEN_SMITHY_HUMMER)
                SetObjectiveState("LearnAllWarCries", OBJECTIVE_COMPLETED)
            else
                MessageBox(g_sPath.."MapMakerOption3AllWarCriesNotOK.txt")
            end
            allDone = nil
        end

        if allDone then MessageBox(g_sPath.."MapMakerOption3AllDone.txt") end

    elseif cNum == 3 then
        QuestionBox(g_sPath.."MapMakerOption4Description.txt", "NPCMapMakerSarFamilyCallback", "")
    elseif cNum == 4 then
        MessageBox(g_sPath.."MapMakerOption5Description.txt")
    end
end

function ValeriaHavenCaptureTrigger()
    Trigger(OBJECT_CAPTURE_TRIGGER, "ValeriasHaven", nil)
    SetObjectiveState("AssassinateValeria", OBJECTIVE_FAILED)
    RazeTown("ValeriasHaven")
    MessageBox(g_sPath.."PiaFailure.txt")
end

function NPCPiaStartQuestCallback()
    Trigger(OBJECT_TOUCH_TRIGGER, "ValeriaPortal", nil)
    SetObjectEnabled("ValeriaPortal", true)
    Trigger(OBJECT_CAPTURE_TRIGGER, "ValeriasHaven", "ValeriaHavenCaptureTrigger")
    SetObjectiveState("AssassinateValeria", OBJECTIVE_ACTIVE)
end

function NPCTinYQuestCallback()
    SetObjectiveState("HelpingAThief", OBJECTIVE_ACTIVE)
end

function StorageCrystalCallback()
    local crystalName = g_tabCallbackParams[1]
    local heroName = g_tabHeroesBanked[CRYSTAL2INDEX[crystalName]]
    SetObjectPos(heroName, 27, 34, 0)
    SetObjectEnabled(heroName, true)
    SetObjectOwner(heroName, 1)
    SetObjectPos(crystalName, CRYSTAL_DUMP_POS[1], CRYSTAL_DUMP_POS[2], 1)
    SetObjectPos(g_tabCallbackParams[2], 27, 35, 0)
    g_tabHeroesBanked[CRYSTAL2INDEX[crystalName]] = nil
end

function StorageCrystalVisitTrigger(visitName, crystalName)
    local temp = _GetHeroInfo(g_tabHeroesBanked[CRYSTAL2INDEX[crystalName]])
    g_tabCallbackParams = {crystalName, visitName}
    QuestionBox({g_sPath.."YanshenWithdrawConfirm.txt"; h_level = temp[1],
                 h_prof = temp[2], h_name = temp[3]}, "StorageCrystalCallback", "")
end

function NPCYanshenCallback()
    for i = 1, 10 do
        if not g_tabHeroesBanked[i] then
            g_tabHeroesBanked[i] = g_tabCallbackParams[1]
            SetObjectPos("StorageCrystal"..i, BANKLOCATIONS[i][1], BANKLOCATIONS[i][2], 0)
            SetObjectOwner(g_tabCallbackParams[1], 8)
            SetObjectPos(g_tabCallbackParams[1], HERO_DUMP_POS[1], HERO_DUMP_POS[2], 1)
            OverrideObjectTooltipNameAndDescription("StorageCrystal"..i, g_tabCallbackParams[2][3], "")
            MessageBox({g_sPath.."YanshenDeposited.txt"; h_level = g_tabCallbackParams[2][1],
                        h_prof = g_tabCallbackParams[2][2], h_name = g_tabCallbackParams[2][3]})
            break
        end
    end
end

function NPCSecondBroCallback()
    SetObjectiveState("HarvestPoltergeists", OBJECTIVE_ACTIVE)
    RemoveObject("SecondBroAura")
    CreateStatic("SecondBroAura",
                 "/Maps/SingleMissions/TrialsOfSarElam/MapObjects/Auras/AcademyS.xdb#xpointer(/AdvMapStaticShared)",
                 43, 25, 0)
    SetObjectPos("SecondBro", 43, 25, 0)
    SetObjectRotation("SecondBro", 0)
end

function NPCThirdBroCallback()
    SetObjectiveState("FindPrincesses", OBJECTIVE_ACTIVE)
end

function NPCWindBellKLOption2Callback()
    local heroName = g_tabCallbackParams[1]
    local temp = floor(GetHeroStat(heroName, 0) / 2)
    TakeAwayHeroExp(heroName, temp)
end

function NPCWindBellKLCallback(pNum, cNum)
    local heroName = g_tabCallbackParams[1]
    local noUpgrades = {
        CREATURE_FIRE_ELEMENTAL, CREATURE_WATER_ELEMENTAL, CREATURE_EARTH_ELEMENTAL, CREATURE_AIR_ELEMENTAL, CREATURE_DEATH_KNIGHT,
        CREATURE_PHOENIX, CREATURE_WOLF, CREATURE_SNOW_APE, CREATURE_MANTICORE, CREATURE_MUMMY}

    if cNum ==  1 then
        local temp = _GetCreatureSlots(heroName)
        for i = 0, 6 do
            local creatureID = temp[i][1]
            if creatureID == 0 or noUpgrades[creatureID] then
                -- Do nothing
            elseif creatureID >= CREATURE_LANDLORD and creatureID <= CREATURE_SERAPH then
                temp[i][1] = CREATURE_PEASANT + ((creatureID - CREATURE_LANDLORD) * 2)
            elseif creatureID >= CREATURE_QUASIT and creatureID <= CREATURE_ARCH_DEMON then
                temp[i][1] = CREATURE_IMP + ((creatureID - CREATURE_QUASIT) * 2)
            elseif creatureID >= CREATURE_STALKER and creatureID <= CREATURE_RED_DRAGON then
                temp[i][1] = CREATURE_SCOUT + ((creatureID - CREATURE_STALKER) * 2)
            elseif creatureID >= CREATURE_DRYAD and creatureID <= CREATURE_RAINBOW_DRAGON then
                temp[i][1] = CREATURE_PIXIE + ((creatureID - CREATURE_DRYAD) * 2)
            elseif creatureID >= CREATURE_SKELETON_WARRIOR and creatureID <= CREATURE_HORROR_DRAGON then
                temp[i][1] = CREATURE_SKELETON + ((creatureID - CREATURE_SKELETON_WARRIOR) * 2)
            elseif creatureID >= CREATURE_GREMLIN_SABOTEUR and creatureID <= CREATURE_STORM_LORD then
                temp[i][1] = CREATURE_GREMLIN + ((creatureID - CREATURE_GREMLIN_SABOTEUR) * 2)
            elseif creatureID >= CREATURE_STONE_DEFENDER and creatureID <= CREATURE_LAVA_DRAGON then
                temp[i][1] = CREATURE_DEFENDER + ((creatureID - CREATURE_STONE_DEFENDER) * 2)
            elseif creatureID >= CREATURE_GOBLIN_DEFILER and creatureID <= CREATURE_CYCLOP_BLOODEYED then
                temp[i][1] = CREATURE_GOBLIN + ((creatureID - CREATURE_GOBLIN_DEFILER) * 2)
            else
                if mod(temp[i][1], 2) == 0 then temp[i][1] = creatureID - 1 end
            end
        end
        BlockGame()
        _SetCreatureSlots(heroName, temp)
        UnblockGame()

    elseif cNum == 2 then
        QuestionBox(g_sPath.."WindBellKLOption2Confirm.txt", "NPCWindBellKLOption2Callback", "")

    elseif cNum == 3 then
        local temp = GetPlayerResource(1, WOOD)
        SetPlayerResource(1, WOOD, temp + 200, heroName)
        temp = GetPlayerResource(1, ORE)
        SetPlayerResource(1, ORE, temp + 200, heroName)
        temp = GetPlayerResource(1, MERCURY)
        SetPlayerResource(1, MERCURY, temp + 100, heroName)
        temp = GetPlayerResource(1, CRYSTAL)
        SetPlayerResource(1, CRYSTAL, temp + 100, heroName)
        temp = GetPlayerResource(1, SULFUR)
        SetPlayerResource(1, SULFUR, temp + 100, heroName)
        temp = GetPlayerResource(1, GEM)
        SetPlayerResource(1, GEM, temp + 100, heroName)
        temp = GetPlayerResource(1, GOLD)
        SetPlayerResource(1, GOLD, temp + 1000000, heroName)
    end
end

function NPCPhoenix52Callback()
end

function NPClh4122StartQuestCallback()
    _alienQuestHero = g_tabCallbackParams[1]
    Trigger(OBJECT_TOUCH_TRIGGER, "AlienPortal", nil)
    SetObjectEnabled("AlienPortal", true)
    SetObjectiveState("AssassinateAlien", OBJECTIVE_ACTIVE)
    MessageBox(g_sPath.."lh4122OpenPortal.txt")
end

function NPCCaesarfoxStartQuestCallback()
    SetObjectiveState("FindBeginnerWand", OBJECTIVE_ACTIVE)
    SetObjectiveState("FindMarkalSkull", OBJECTIVE_ACTIVE)
end

function NPCVisitsTrigger(heroName, npcName)
    print("Visited an NPC! ", heroName, " ", npcName)

    if npcName == "MapMaker" then
        if GetObjectiveState("StartupObjective") == OBJECTIVE_ACTIVE and GetObjectiveProgress("StartupObjective") >= 1 then
            MessageBox(g_sPath.."MapMakerIntro2.txt")
            GiveArtefact(heroName, ARTIFACT_PLATE_MAIL_OF_STABILITY)
            GiveArtefact(heroName, ARTIFACT_SANDALS_OF_THE_SAINT)
            SetObjectiveState("StartupObjective", OBJECTIVE_COMPLETED)
            SetObjectiveVisible("StartupObjective", nil)
        end

        g_tabCallbackParams = {heroName}

        TalkBoxForPlayers(
            GetPlayerFilter(1), 
            PORT_HAVEN,
            g_sPath.."DescriptionMapMaker.txt",
            g_sPath.."MapMakerIntro.txt",
            nil,
            "NPCMapMakerCallback",
            1,
            g_sPath.."NameMapMaker.txt",
            nil,
            0,
            g_sPath.."MapMakerOption2.txt",
            g_sPath.."MapMakerOption3.txt",
            g_sPath.."MapMakerOption4.txt",
            g_sPath.."MapMakerOption5.txt")

    elseif npcName == "Piao" then
        print("TODO")
    elseif npcName == "Tang" then
        print("TODO")
    elseif npcName == "RoundSweetPie" then
        print("TODO")
    elseif npcName == "Pia" then
        local objState = GetObjectiveState("AssassinateValeria")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."AssassinateValeriaDescription2.txt")
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCPiaStartQuestCallback" , "")
        elseif objState == OBJECTIVE_ACTIVE then
            if IsHeroAlive("RedHeavenHero03") then
                MessageBox(g_sPath.."NPCWaiting.txt")
            else
                MessageBox(g_sPath.."PiaFinish.txt")
                TeachHeroSpell(heroName, SPELL_PHANTOM)
                Trigger(OBJECT_CAPTURE_TRIGGER, "ValeriasHaven", nil)
                SetObjectOwner("ValeriasHaven", 0)
                SetObjectEnabled("ValeriasHaven", nil)
                SetObjectiveState("AssassinateValeria", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("AssassinateValeria", nil)
            end
        elseif objState == OBJECTIVE_COMPLETED then
            MessageBox(g_sPath.."PiaFinish2.txt")
        elseif objState == OBJECTIVE_FAILED then
            MessageBox(g_sPath.."PiaFailure2.txt")
        end

    elseif npcName == "TinY" then
        local objState = GetObjectiveState("HelpingAThief")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."HelpingAThiefDescription2.txt")
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCTinYQuestCallback", "")
        elseif objState == OBJECTIVE_ACTIVE then
            local found = nil
            local temp = _GetCreatureSlots(heroName)
            local targets = {[CREATURE_NIGHTMARE] = true, [CREATURE_FRIGHTFUL_NIGHTMARE] = true, [CREATURE_HELLMARE] = true}
            for i, currSlot in temp do
                if targets[currSlot[1]] then 
                    found = true
                    break
                end
            end
            if found then
                MessageBox(g_sPath.."TinYFound.txt")
                BlockGame()
                local unix, uniy, unil = GetObjectPos("TinYUnicorn")
                MoveCamera(unix, uniy, unil, 20, 0.99, 1.57)
                sleep(30)
                PlayVisualEffect("/Effects/_(Effect)/Spells/FireBallHit.xdb#xpointer(/Effect)", '', 'boom', unix, uniy, 0, 0, unil )
                Play3DSound("/Sounds/_(Sound)/SFX/FireballHitMono.xdb#xpointer(/Sound)", unix, uniy, unil )
                sleep(5)
                RemoveObject("TinYUnicorn")
                SetObjectPos("TinYNightmare", unix, uniy, unil)
                unix, uniy, unil = GetObjectPos("TinY")
                sleep(10)
                UnblockGame()
                MessageBox(g_sPath.."TinYFound2.txt")
                GiveArtefact(heroName, ARTIFACT_TREEBORN_QUIVER)
                GiveArtefact(heroName, ARTIFACT_UNICORN_HORN_BOW)
                BlockGame()
                MoveCamera(unix, uniy, unil, 20, 0.99, 1.57)
                sleep(20)
                RemoveObject("TinY")
                RemoveObject("TinYAura")
                RemoveObject("TinYNightmare")
                UnblockGame()
                SetObjectiveState("HelpingAThief", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("HelpingAThief", nil)
            else
                MessageBox(g_sPath.."TinYNotFound.txt")
            end
        end

    elseif npcName == "Yanshen" then
        local numHeroes = 0
        SetObjectPos(heroName, 27, 35, 0)
        for i = 1, 10 do
            if g_tabHeroesBanked[i] then numHeroes = numHeroes + 1 end
        end
        MessageBox({g_sPath.."YanshenIntro.txt"; n_hero = numHeroes})
        if length(g_tabHeroesBanked) < 10 then
            local temp = _GetHeroInfo(heroName)
            g_tabCallbackParams = {heroName, temp}
            QuestionBox({g_sPath.."YanshenIntro2.txt"; h_level = temp[1],
                         h_prof = temp[2], h_name = temp[3]}, "NPCYanshenCallback", "")
        end

    elseif npcName == "ASha" then
        print("TODO")
    elseif npcName == "Aldens" then
        print("TODO")
    elseif npcName == "SecondBro" then
        local objState = GetObjectiveState("HarvestPoltergeists")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."HarvestPoltergeistsDescription2.txt")
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCSecondBroCallback", "")
        elseif objState == OBJECTIVE_ACTIVE then
            local polAmt = 0
            local temp = _GetCreatureSlots(heroName)
            for i, slot in temp do
                if slot[1] == CREATURE_POLTERGEIST then polAmt = polAmt + slot[2] end
            end
            if polAmt < 800 then
                MessageBox({g_sPath.."SecondBroNotEnough.txt"; n_creature = polAmt})
            else
                MessageBox(g_sPath.."SecondBroEnough.txt")
                polAmt = 800
                for i = 0, 6 do
                    if polAmt == 0 then break end
                    if temp[i][1] == CREATURE_POLTERGEIST then
                        if polAmt < temp[i][2] then
                            temp[i][2] = temp[i][2] - polAmt
                            polAmt = 0
                        else
                            polAmt = polAmt - temp[i][2]
                            temp[i][1] = 0
                            temp[i][2] = 0
                        end
                    end
                end
                _SetCreatureSlots(heroName, temp)
                GiveArtefact(heroName, ARTIFACT_WEREWOLF_CLAW_NECKLACE)
                SetObjectiveState("HarvestPoltergeists", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("HarvestPoltergeists", nil)
            end
        elseif objState == OBJECTIVE_COMPLETED then
            MessageBox(g_sPath.."SecondBroFinished.txt")
        end

    elseif npcName == "ThirdBro" then
        local objState = GetObjectiveState("FindPrincesses")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."FindPrincessesDescription2.txt")
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCThirdBroCallback", "")
        elseif objState == OBJECTIVE_ACTIVE then
            local p1Found, p2Found = 0, 0
            if HasArtefact(heroName, ARTIFACT_FREIDA) then p1Found = 1 end
            if HasArtefact(heroName, ARTIFACT_PRINCESS) then p2Found = 1 end
            if p1Found + p2Found == 0 then
                MessageBox(g_sPath.."ThirdBro0Found.txt")
            elseif p1Found + p2Found == 1 then
                MessageBox(g_sPath.."ThirdBro1Found.txt")
            elseif p1Found + p2Found == 2 then
                MessageBox(g_sPath.."ThirdBroBothFound.txt")
                GiveArtefact(heroName, ARTIFACT_MASK_OF_DOPPELGANGER)
                GiveArtefact(heroName, ARTIFACT_TWISTING_NEITHER)
                SetObjectiveState("FindPrincesses", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("FindPrincesses", nil)
            end
        elseif objState == OBJECTIVE_COMPLETED then
            MessageBox(g_sPath.."ThirdBroDone.txt")
        end

    elseif npcName == "WindBellKL" then
        g_tabCallbackParams = {heroName}
        TalkBoxForPlayers(
            GetPlayerFilter(1), 
            PORT_HAVEN,
            g_sPath.."DescriptionWindBellKL.txt",
            g_sPath.."WindBellKLIntro.txt",
            nil,
            "NPCWindBellKLCallback",
            1,
            g_sPath.."NameWindBellKL.txt",
            nil,
            0,
            g_sPath.."WindBellKLOption1.txt",
            g_sPath.."WindBellKLOption2.txt",
            g_sPath.."WindBellKLOption3.txt")

    elseif npcName == "MasterTieru" then
        print("TODO")

    elseif npcName == "Phoenix52" then
        print("TODO")

    elseif npcName == "lh4122" then
        local objState = GetObjectiveState("AssassinateAlien")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."AssassinateAlienDescription2.txt")
            g_tabCallbackParams = {heroName}
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPClh4122StartQuestCallback" , "")
        elseif objState == OBJECTIVE_ACTIVE then
            if heroName == _alienQuestHero then
                if IsHeroAlive("ufo") then
                    MessageBox(g_sPath.."NPCWaiting.txt")
                else
                    MessageBox(g_sPath.."lh4122Finished2.txt")
                    GiveArtefact(heroName, ARTIFACT_RING_OF_CELERITY)
                    GiveArtefact(heroName, ARTIFACT_RING_OF_CELERITY)
                    SetObjectEnabled("AlienPortal", nil)
                    SetObjectiveState("AssassinateAlien", OBJECTIVE_COMPLETED)
                    SetObjectiveVisible("AssassinateAlien", nil)
                end
            else
                MessageBox(g_sPath.."lh4122WrongHero.txt")
            end
        elseif objState == OBJECTIVE_COMPLETED then
            MessageBox(g_sPath.."lh4122Finished.txt")
        end

    elseif npcName == "Caesarfox" then
        local obj1State = GetObjectiveState("FindBeginnerWand")
        local obj2State = GetObjectiveState("FindMarkalSkull")
        if obj1State < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."CaesarfoxIntro.txt")
            MessageBox(g_sPath.."FindBeginnerWandDescription2.txt")
            MessageBox(g_sPath.."FindMarkalSkullDescription2.txt")
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCCaesarfoxStartQuestCallback" , "")
        else
            if obj1State == OBJECTIVE_ACTIVE then
                if HasArtefact(heroName, ARTIFACT_BEGINNER_MAGIC_STICK) then
                    SetObjectiveState("FindBeginnerWand", OBJECTIVE_COMPLETED)
                    TeacHeroSpell(heroName, SPELL_ANTI_MAGIC)
                    TeacHeroSpell(heroName, SPELL_RESURRECT)
                    MessageBox(g_sPath.."CaesarfoxWandDone.txt")
                else
                    MessageBox(g_sPath.."CaesarfoxWandNotDone.txt")
                end
            end

            if obj2State == OBJECTIVE_ACTIVE then
                if HasArtefact(heroName, ARTIFACT_SKULL_OF_MARKAL) then
                    SetObjectiveState("FindMarkalSkull", OBJECTIVE_COMPLETED)
                    TeacHeroSpell(heroName, SPELL_IMPLOSION)
                    TeacHeroSpell(heroName, SPELL_DEEP_FREEZE)
                    MessageBox(g_sPath.."CaesarfoxSkullDone.txt")
                else
                    MessageBox(g_sPath.."CaesarfoxSkullNotDone.txt")
                end
            else
                MessageBox(g_sPath.."CaesarfoxSkullNotDone.txt")
            end

            if obj1State > OBJECTIVE_ACTIVE and obj2State > OBJECTIVE_ACTIVE then
                MessageBox(g_sPath.."CaeserfoxFinish.txt")
            end
        end

    elseif npcName == "Realyashiro" then
        print("TODO")
    elseif npcName == "Vegetable" then
        print("TODO")
    elseif npcName == "EvilP" then
        print("TODO")
    elseif npcName == "MarkalNPC" then
        print("TODO")
    else
        print("Run into error in NPCVisitsTrigger! ", heroName, " ", npcName)
    end
end

function WitchHutTrainingCallback()
    GiveHeroSkill(g_tabCallbackParams[1], g_tabCallbackParams[2])
    g_setEnlightened[g_tabCallbackParams[1]] = true
    Play2DSound("/Sounds/_(Sound)/Buildings/WitchHut.xdb#xpointer(/Sound)")
end

function WitchHutTrainingTrigger(heroName, trainerName)
    if trainerName == "EnlightenedWitch" then
        if g_setEnlightened[heroName] then
            MessageBox(g_sPath.."EnlightenedWitchVisited.txt")
            return
        end

        local skillNo = SKILL_LEARNING
        if RACE2PROF[_GetHeroRace(heroName)] == "Barbarian" then skillNo = HERO_SKILL_BARBARIAN_LEARNING end

        if GetHeroSkillMastery(heroName, skillNo) >= 3 then
            MessageBox(g_sPath.."EnlightenedWitchTooSkilled.txt")
            return
        end

        g_tabCallbackParams = {heroName, skillNo}
        QuestionBox(g_sPath.."EnlightenedWitchAsking.txt", "WitchHutTrainingCallback", "")

    else
        print("Run into error in WitchHutTrainingTrigger! ", heroName, " ", trainerName)
    end
end

function LandLordAfterFightCallback(heroName, isWin)
    if isWin then
        MessageBox(g_sPath.."DescriptionUndyingPeasant.txt")
    end
end

function NonHostileMonsterTrigger(heroName, monsterName)
    if monsterName == "UndyingPeasant" then
        StartCombat(heroName, nil, 1, CREATURE_LANDLORD, 1, nil, "LandLordAfterFightCallback")
    else
        print("Run into error in NonHostileMonsterTrigger! ", heroName, " ", monsterName)
    end
end

function RegionEnterTrigger(heroName, regionName)
    print("Region name ", heroName, " ", regionName)
end

function NewDayTrigger()
    -- Clear all player owned dwellings
    for i = 0, 7 do
        for j = 1, 7 do
            SetObjectDwellingCreatures(RACE2TOWN[i], CREATURE_IDS_BY_RACE[i][j], 0)
        end
    end
end

function MarkalLevelUpTrigger()
    local expPoints = GetHeroStat("Berein", 0) - 1
    TakeAwayHeroExp("Berein", expPoints)
end

function PortalDenyTrigger(heroName, portalName)
    MessageBox(g_sPath.."PortalDenied.txt")
end

function SetupScene()
    BlockGame()
    for i = 1, 16 do
        SetObjectEnabled("Treant"..i, nil)
    end

    for i = 1, 12 do
        SetObjectEnabled("DeadFootman"..i, nil)
        SetDisabledObjectMode("DeadFootman"..i, DISABLED_INTERACT)
    end
    sleep(1)
    for i = 1, 12 do
        SetMonsterSelectionType("DeadFootman"..i, 0)
        PlayObjectAnimation("DeadFootman"..i, "death", ONESHOT_STILL)
    end

    for i = 1, 6 do SetObjectEnabled("AliveFootman"..i, nil) end
    sleep(1)
    for i = 1, 6 do SetMonsterSelectionType("AliveFootman"..i, 0) end

    for i = 1, 7 do SetObjectEnabled("Surround"..i, nil) end
    sleep(1)
    for i = 1, 7 do SetMonsterSelectionType("Surround"..i, 0) end

    for i = 1, 6 do SetObjectEnabled("Cheer"..i, nil) end
    sleep(1)
    for i = 1, 6 do SetMonsterSelectionType("Cheer"..i, 0) end

    SetObjectEnabled("TinYUnicorn", nil)
    SetDisabledObjectMode("TinYUnicorn", DISABLED_INTERACT)
    SetObjectEnabled("TinYNightmare", nil)
    SetDisabledObjectMode("TinYNightmare", DISABLED_INTERACT)
    sleep(1)
    SetMonsterSelectionType("TinYUnicorn", 0)
    SetMonsterSelectionType("TinYNightmare", 0)
    UnblockGame()
end

function NormalizeStartRace()
    -- Clean up all creature dwellings
    -- Disown all towns that is not the starting race

    g_setRaceUnlocked[g_iPlayerRace] = 1
    NewDayTrigger()

    for i = 0, 7 do
        if i ~= g_iPlayerRace then
            SetObjectOwner(RACE2TOWN[i], 0)
            SetObjectEnabled(RACE2GARRISON[i], nil)
        end

        for j = 1, 7 do
            AddObjectCreatures(RACE2TOWN[i], CREATURE_IDS_BY_RACE[i][j], INIT_CREATURE_COUNT[i][j])
        end
    end
end

function SetupQuestObjects()
    -- Setup new day trigger
    Trigger(NEW_DAY_TRIGGER, "NewDayTrigger")

    -- Setup garrison triggers
    for i, garrisonName in RACE2GARRISON do
        Trigger(OBJECT_TOUCH_TRIGGER, garrisonName, "GarrisonVisitingMessageTrigger")
    end
    Trigger(OBJECT_CAPTURE_TRIGGER, RACE2GARRISON[g_iPlayerRace], "GarrisonCapturedTrigger")

    -- Setup Sar family triggers
    for i, sarName in INDEX2SAR do
        SetObjectEnabled(sarName, nil)
        Trigger(OBJECT_TOUCH_TRIGGER, sarName, "SarFamilyVisitsTrigger")
    end

    -- Setup NPC triggers
    for i, npcName in INDEX2NPC do
        SetObjectEnabled(npcName, nil)
        Trigger(OBJECT_TOUCH_TRIGGER, npcName, "NPCVisitsTrigger")
    end

    -- Setup Neutral Hero
    SetObjectOwner("ufo", 8)
    SetObjectOwner("Berein", 8)
    SetObjectOwner("Wulfstan", 8)
    SetObjectEnabled("Wulfstan", nil)
    SetObjectOwner("Veyer", 8)
    SetObjectEnabled("Veyer", nil)

    -- Setup Region triggers
    Trigger(REGION_ENTER_AND_STOP_TRIGGER, "VeyerRegion", "RegionEnterTrigger")
    Trigger(REGION_ENTER_AND_STOP_TRIGGER, "WulfstanRegion", "RegionEnterTrigger")

    -- Setup Misc quest triggers
    SetObjectEnabled("EnlightenedWitch", nil)
    Trigger(OBJECT_TOUCH_TRIGGER, "EnlightenedWitch", "WitchHutTrainingTrigger")

    SetObjectEnabled("UndyingPeasant", nil)
    Trigger(OBJECT_TOUCH_TRIGGER, "UndyingPeasant", "NonHostileMonsterTrigger")

    -- Setup Storage crystals trigger
    for i = 1, 10 do
        SetObjectEnabled("StorageCrystal"..i, nil)
        Trigger(OBJECT_TOUCH_TRIGGER, "StorageCrystal"..i, "StorageCrystalVisitTrigger")
        SetObjectPos("StorageCrystal"..i, CRYSTAL_DUMP_POS[1], CRYSTAL_DUMP_POS[2], 1)
    end

    --Trigger(HERO_LEVELUP_TRIGGER, "Berein", "MarkalLevelUpTrigger")
    SetRegionBlocked("BlockAI1", true, PLAYER_2)

    -- Setup portals
    local portalNames = {"ValeriaPortal", "AlienPortal", "InfernoPortal", "DragonGuardianPortal"}
    for i, portalName in portalNames do
        SetObjectEnabled(portalName, nil)
        Trigger(OBJECT_TOUCH_TRIGGER, portalName, "PortalDenyTrigger")
    end

    -- Make NPC non-lootable
    SetHeroLootable("RedHeavenHero03", nil)
end

function DancingPeasant()
    local animeNo = random(6)
    local animeName = "Idle00"

    if animeNo == 0 then
        animeName = "attack00"
    elseif animeNo == 1 then
        animeName = "attack01"
    elseif animeNo == 2 then
        animeName = "happy"
    elseif animeNo == 3 then
        animeName = "hit"
    elseif animeNo == 4 then
        animeName = "stir00"
    else -- animeNo == 5
        animeName = "specability"
    end

    local angle = random (360)

    SetObjectRotation("UndyingPeasant", angle)
    PlayObjectAnimation("UndyingPeasant", animeName, ONESHOT)
end

function DancingSiege()
    
end

function OpeningScene()
    OpenCircleFog(25, 117, 0, 30, 1)
end

function backgroundThread()
    -- Monitoring loop
    local peasantCycle = 0
    local siegeCycle  = 0

    while 1 do

        -- Setup Unlimited Movement
        if GetPlayerState(1) == true then
            for i,heroName in GetPlayerHeroes(1) do
                if GetHeroStat(heroName, 7) < 2500 then ChangeHeroStat(heroName, 7, 10000) end
            end
        end
        -- Unlimited movement end

        -- Animation
        peasantCycle = peasantCycle + 1
        if peasantCycle >= 5 then
            DancingPeasant()
            peasantCycle = 0
        end

        siegeCycle = siegeCycle + 1
        if siegeCycle >= 2 then
            DancingSiege()
            siegeCycle = 0
        end
        -- Animation end

        sleep(10)
    end
end

function testfunc()
    sarName = "SarShazzar"
    g_tabCreatureStored = _GetCreatureSlots("Nur")
    _SetCreatureSlots("Nur", SAR2SLOTS[sarName])
end

-- Map start from here
OpenCircleFog(37, 31, 0, 30, 1)
OpenCircleFog(54, 31, 0, 30, 1)
NormalizeStartRace()
SetupScene()
SetObjectiveState("StartupObjective", OBJECTIVE_ACTIVE)
SetupQuestObjects()
OpeningScene()
startThread(backgroundThread)
