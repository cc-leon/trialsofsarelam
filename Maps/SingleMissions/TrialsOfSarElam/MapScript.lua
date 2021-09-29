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
NAME2RACE = {
    ["Haven"] = 0, ["Preserve"] = 1, ["Academy"] = 2, ["Dungeon"] = 3,
    ["Necropolis"] = 4, ["Inferno"] = 5, ["Dwarves"] = 6, ["Stronghold"] = 7}

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

RACE2AURA =
    {[0] = "/Maps/SingleMissions/TrialsOfSarElam/MapObjects/Auras/HavenS.xdb#xpointer(/AdvMapStaticShared)",
     [1] = "/Maps/SingleMissions/TrialsOfSarElam/MapObjects/Auras/SylvanS.xdb#xpointer(/AdvMapStaticShared)",
     [2] = "/Maps/SingleMissions/TrialsOfSarElam/MapObjects/Auras/AcademyS.xdb#xpointer(/AdvMapStaticShared)",
     [3] = "/Maps/SingleMissions/TrialsOfSarElam/MapObjects/Auras/DungeonS.xdb#xpointer(/AdvMapStaticShared)",
     [4] = "/Maps/SingleMissions/TrialsOfSarElam/MapObjects/Auras/NecropolisS.xdb#xpointer(/AdvMapStaticShared)",
     [5] = "/Maps/SingleMissions/TrialsOfSarElam/MapObjects/Auras/InfernoS.xdb#xpointer(/AdvMapStaticShared)",
     [6] = "/Maps/SingleMissions/TrialsOfSarElam/MapObjects/Auras/FortressS.xdb#xpointer(/AdvMapStaticShared)",
     [7] = "/Maps/SingleMissions/TrialsOfSarElam/MapObjects/Auras/StrongholdS.xdb#xpointer(/AdvMapStaticShared)"}

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
    ["SarBahir"] = {[0] = {CREATURE_SKELETON_WARRIOR, 80}, [1] = {CREATURE_SKELETON, 6},
                    [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}},
    ["SarTigon"] = {[0] = {CREATURE_SHARP_SHOOTER, 30}, [1] = {CREATURE_PIXIE, 6},
                    [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}},
    ["SarBadon"] = {[0] = {CREATURE_SKELETON_ARCHER, 150}, [1] = {CREATURE_SKELETON, 6},
                    [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}},
    ["SarShazzar"] = {[0] = {CREATURE_LONGBOWMAN, 50},
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
    [CREATURE_SKELETON] = "Text/Game/Creatures/Necropolis/Skeleton.txt",
    [CREATURE_SKELETON_ARCHER] = "Text/Game/Creatures/Necropolis/Skeleton_Archer.txt",
    [CREATURE_SHARP_SHOOTER] = "Text/Game/Creatures/Preserve/3rd/SharpShooter_Name.txt"}

INDEX2GUARDIAN = {"Dark"}

-- Mapping for iteration of Central Area NPCs
INDEX2NPC = {"MapMaker", "Piao", "Tang", "RoundSweetPie", "Pia", "TinY", "Yanshen", "ASha", "Aldens", "DubiousMage1", "DubiousMage2",
             "WindBellKL", "MasterTieru", "NamelessDragonKnight", "ThirdBro", "SecondBro", "BeastTrainer", "Merchant", "ExoticMage", 
             "BeastBreeder"}
-- NPC2INDEX = {["MapMaker"] = 1, ["Piao"] = 2, ["Tang"] = 3, ["RoundSweetPie"] = 4, ["Pia"] = 5, ["TinY"] = 6, ["YanShen"] = 7,
            -- ["ASha"] = 8, ["Aldens"] = 9, ["DubiousMage1"] = 10, ["DubiousMage2"] = 11, ["WindBellKL"] = 12, ["MasterTieru"] = 13,}


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
_panickyInfernoRazed = nil
_dwellingsRazed = 0
_golemFightResult = 0

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

function _MergeCreatureSlots(objName, creatureID)
    local creatureAmount = GetObjectCreatures(objName, creatureID)
    if creatureAmount > 0 then
        local temp = _GetCreatureSlots(objName)
        local firstFound = nil
        for i, slot in temp do
            if slot[1] == creatureID then
                if not firstFound then
                    slot[2] = creatureAmount
                    firstFound = true
                else
                    slot[1] = 0
                    slot[2] = 0
                end
            end
        end
        _SetCreatureSlots(objName, temp)
        sleep(2)
    end
end

function _ConfiscateWarMachines(heroName)
    RemoveHeroWarMachine(heroName, WAR_MACHINE_BALLISTA)
    RemoveHeroWarMachine(heroName, WAR_MACHINE_FIRST_AID_TENT)
    RemoveHeroWarMachine(heroName, WAR_MACHINE_AMMO_CART)
end

function _ConfiscateCreatures(heroName, creatureID, creatureAmount)
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
    --MoveCamera(46, 39, 0, 80, 3.14/3, 0)
    --sleep(1)
    local origPosX, origPosY = GetObjectPos("SarIssus")
    SetObjectPos("SarIssus", 46, 38)
    SetObjectRotation("SarIssus", 180)
    --MoveCamera(45, 38, 0, 80, 3.14/3, 0)
    --sleep(1)
    UnblockGame()

    MessageBox(g_sPath.."SarIssusGreeting.txt")
    BlockGame()
    SetObjectPos("SarIssus", origPosX, origPosY)
    SetObjectRotation("SarIssus", 90)
    --sleep(1)

    SetObjectPos("ArtBonusSarStaff", 45, 37, 0)
    SetObjectPos("ArtBonusSarCrown", 46, 37, 0)
    SetObjectPos("ArtBonusSarRing", 47, 37, 0)
    SetObjectPos("ArtBonusSarRobe", 45, 36, 0)
    SetObjectPos("ArtBonusDarkRitualScroll1", 46, 36, 0)
    SetObjectPos("ArtBonusDarkRitualScroll2", 47, 36, 0)
    SetObjectPos("ArtBonusDarkRitualScroll3", 45, 35, 0)
    SetObjectPos("ArtBonusDarkRitualScroll4", 46, 35, 0)
    SetObjectPos("ArtBonusDarkRitualScroll5", 47, 35, 0)
    UnblockGame()
    MessageBox(g_sPath.."SarIssusBonus.txt")

    SetObjectiveState("CompleteSarFamily", OBJECTIVE_ACTIVE)
    Trigger(OBJECT_CAPTURE_TRIGGER, garrisonName, nil)
end

function SarFamilyAutoComplete(heroName)
    local expReward = {1980, 1610, 1980, 2277, 4080, 640, 1320}

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
        local fulfilled = true

        local creatureID, creatureAmount = 0, 0
        if sarName == "SarIssus" then
            creatureID, creatureAmount = CREATURE_SKELETON_WARRIOR, 200
        elseif sarName == "SarAntor" then
            creatureID, creatureAmount = CREATURE_CYCLOP, 1
        elseif sarName == "SarTigon" then
            creatureID, creatureAmount = CREATURE_SHARP_SHOOTER, 30
        elseif sarName == "SarBadon" then
            creatureID, creatureAmount = CREATURE_SKELETON_ARCHER, 150
        elseif sarName == "SarBahir" then
            creatureID, creatureAmount = CREATURE_SKELETON_WARRIOR, 80
        elseif sarName == "SarShazzar" then
            creatureID, creatureAmount = CREATURE_LONGBOWMAN, 40
        end
        if creatureID ~= 0 then fulfilled = (GetObjectCreatures(heroName, creatureID) >= creatureAmount) end

        if fulfilled then
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
            MessageBox({g_sPath.."FailReasonSarFamily.txt"; c_amt = creatureAmount, c_name = CREATURE_TEXTS[creatureID]})
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

    _ConfiscateWarMachines(heroName)
    if sarName == "SarBadon" then
        sleep(1)
        GiveHeroWarMachine(heroName, WAR_MACHINE_AMMO_CART)
        sleep(1)
    end

    ChangeHeroStat(heroName, 8, -INFINITY)
    if sarName == "SarShazzar" then
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
    elseif sarName == "SarTigon" then
        StartCombat(heroName, nil, 3,
                    CREATURE_CERBERI, 23, CREATURE_CERBERI, 23, CREATURE_CERBERI, 23,
                    SAR_COMBAT_SCRIPT, "SarFinishedCallback", NOOB2_ARENA)
    elseif sarName == "SarBadon" then
        StartCombat(heroName, nil, 3,
                    CREATURE_STEEL_GOLEM, 40, CREATURE_STEEL_GOLEM, 40, CREATURE_STEEL_GOLEM, 40,
                    SAR_COMBAT_SCRIPT, "SarFinishedCallback", NOOB1_ARENA)
    elseif sarName == "SarBahir" then
        StartCombat(heroName, nil, 3,
                    CREATURE_SPRITE, 20, CREATURE_PEASANT, 1, CREATURE_SPRITE, 20,
                    SAR_COMBAT_SCRIPT, "SarFinishedCallback", NOOB2_ARENA)
    elseif sarName == "SarShazzar" then
        StartCombat(heroName, nil, 3,
                    CREATURE_CENTAUR, 40, CREATURE_CENTAUR, 40, CREATURE_CENTAUR, 40,
                    SAR_COMBAT_SCRIPT, "SarFinishedCallback", SAND_ARENA)
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

function NPCRoundSweetPieCallback()
    local mobs = {"Phoenixes", "Titans", "Magmas", "BlackDragons"}
    for i, mob in mobs do
        MessageBox(g_sPath.."Kill"..mob.."Description2.txt")
        SetObjectiveState("Kill"..mob, OBJECTIVE_ACTIVE)
    end
    CreateStatic("RoundSweetPieAura",
                 RACE2AURA[NAME2RACE["Academy"]],
                 26, 27, 0)
    SetObjectPos("RoundSweetPie", 26, 27, 0)
    SetObjectRotation("RoundSweetPie", -45)
    RemoveObject("RoundSweetPieAura")
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
    RemoveObject("CrystalAura"..CRYSTAL2INDEX[crystalName])
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
            CreateStatic("CrystalAura"..i,
                         RACE2AURA[_GetHeroRace(g_tabCallbackParams[1])],
                         BANKLOCATIONS[i][1], BANKLOCATIONS[i][2], 0)
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

function NPCAShaCallback()
    BlockGame()
    local phx, phy, phl = GetObjectPos("UnknownPhoenix")
    MoveCamera(phx, phy, phl, 20, 0.99, 0)
    OpenCircleFog(phx, phy, phl, 10, 1)
    sleep(20)
    UnblockGame()
    SetObjectiveState("CountPhoenixes", OBJECTIVE_ACTIVE)
end

function NPCDubiousMage1Callback()
    SetObjectiveState("HarvestPoltergeists", OBJECTIVE_ACTIVE)
    RemoveObject("DubiousMage1Aura")
    CreateStatic("DubiousMage1Aura",
                 RACE2AURA[NAME2RACE["Dungeon"]],
                 43, 25, 0)
    SetObjectPos("DubiousMage1", 43, 25, 0)
    SetObjectRotation("DubiousMage1", 0)
end

function NPCDubiousMage2Callback()
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

function NPCMasterTieruCallback()
    SetObjectiveState("AnswerAllSphinxRiddles", OBJECTIVE_ACTIVE)
    for i = 0, 7 do
        Trigger(OBJECT_TOUCH_TRIGGER, "Sphinx"..i, nil)
        SetObjectEnabled("Sphinx"..i, true)
    end
end

function InfernoDwellingCaptureTrigger(oldOwner, newOwner, heroName, dwellingName)
    Trigger(OBJECT_CAPTURE_TRIGGER, dwellingName, nil)
    if newOwner == 1 then
        local dwx, dwy, dwl = GetObjectPosition(dwellingName)
        Play2DSound("/Maps/Scenario/A2C2M1/Siege_WallCrash02sound.xdb#xpointer(/Sound)" )
        PlayVisualEffect("/Effects/_(Effect)/Buildings/Capture/Start_dust_S.xdb#xpointer(/Effect)", "","tag1", dwx, dwy, 0, 90, dwl)
        PlayVisualEffect("/Effects/_(Effect)/Characters/Heroes/DemonLord/Path/Level_2b.xdb#xpointer(/Effect)","","tag2", dwx, dwy, 0, 90, dwl)
        RazeBuilding(dwellingName)
        _dwellingsRazed = _dwellingsRazed + 1
    end
end

function InfernoTownCaptureTrigger(oldOwner, newOwner, heroName, townName)
    if newOwner == 1 then
        RazeTown("PanickyInferno")
        _panickyInfernoRazed = true
    end
end

function InfernoRegionTrigger(heroName, regionName)
    BlockGame()
    local townx, towny, townl = GetObjectPos("PanickyInferno")
    towny = towny - 2
    sleep(10)
    MoveCamera(townx, towny, townl, 70, 0.55, 0)
    OpenCircleFog(townx, towny, townl, 30, 1)
    sleep(10)
    for i = 0, 7 do
        for j = 1, 4 do
            SetObjectOwner("Dwelling"..i..j, PLAYER_4)
            Trigger(OBJECT_CAPTURE_TRIGGER, "Dwelling"..i..j, "InfernoDwellingCaptureTrigger")
        end
        sleep(2)
    end
    Trigger(OBJECT_CAPTURE_TRIGGER, "PanickyInferno", "InfernoTownCaptureTrigger")
    Trigger(REGION_ENTER_AND_STOP_TRIGGER, "InfernoRegion", nil)
    SetPlayerResource(PLAYER_4, WOOD, 1000)
    SetPlayerResource(PLAYER_4, ORE, 1000)
    SetPlayerResource(PLAYER_4, MERCURY, 1000)
    SetPlayerResource(PLAYER_4, CRYSTAL, 1000)
    SetPlayerResource(PLAYER_4, SULFUR, 1000)
    SetPlayerResource(PLAYER_4, GEM, 1000)
    SetPlayerResource(PLAYER_4, GOLD, 1000000)
    UnblockGame()
    MessageBox(g_sPath.."NamelessDragonKnightInfernoAlert.txt")
end

function NPCNamelessDragonKnightCallback()
    Trigger(OBJECT_TOUCH_TRIGGER, "InfernoPortal", nil)
    SetObjectEnabled("InfernoPortal", true)
    SetObjectiveState("DestroyInfernoOutpost", OBJECTIVE_ACTIVE)
    Trigger(REGION_ENTER_AND_STOP_TRIGGER, "InfernoRegion", "InfernoRegionTrigger")
end

function NPCThirdBroStartQuestCallback()
    _alienQuestHero = g_tabCallbackParams[1]
    Trigger(OBJECT_TOUCH_TRIGGER, "AlienPortal", nil)
    SetObjectEnabled("AlienPortal", true)
    SetObjectiveState("AssassinateAlien", OBJECTIVE_ACTIVE)
    MessageBox(g_sPath.."ThirdBroOpenPortal.txt")
end

function NPCSecondBroStartQuestCallback()
    SetObjectiveState("FindBeginnerWand", OBJECTIVE_ACTIVE)
    SetObjectiveState("FindMarkalSkull", OBJECTIVE_ACTIVE)
end

function NPCBeastTrainerCallback()
    SetObjectiveState("ScareAwayWolves", OBJECTIVE_ACTIVE)
    SetObjectPos("BeastTrainer", 66, 24, 0)
    SetObjectRotation("BeastTrainer", 45)
    RemoveObject("BeastTrainerAura")
    CreateStatic("BeastTrainerAura", RACE2AURA[NAME2RACE["Stronghold"]], 66, 24, 0)
    SetGameVar("SarElamTrialWolvesBeaten", "false")
end

function NPCMerchantCallback()
    SetObjectiveState("ScareAwayLandlord", OBJECTIVE_ACTIVE)
    for i = 1, 4 do
        Trigger(OBJECT_CAPTURE_TRIGGER, "LandlordsMine"..i, "LandlordsMineCaptureTrigger")
        SetObjectEnabled("LandlordsMine"..i, true)
    end
end

function NPCExoticMageCallback()
    SetObjectiveState("KillMagneticGolems", OBJECTIVE_ACTIVE)
    RemoveObject("ExoticMageAura")
    CreateStatic("ExoticMageAura", RACE2AURA[NAME2RACE["Academy"]], 32, 26, 0)
    SetObjectPos("ExoticMage", 32, 26, 0)
    SetObjectRotation("ExoticMage", 0)
end

function NPCVisitsTrigger(heroName, npcName)
    print("Visited an NPC! ", heroName, " ", npcName)

    if npcName == "MapMaker" then
        if GetObjectiveState("StartupObjective") == OBJECTIVE_ACTIVE and GetObjectiveProgress("StartupObjective") >= 1 then
            MessageBox(g_sPath.."MapMakerIntro2.txt")

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
        if GetObjectiveState("KillPhoenixes") < OBJECTIVE_ACTIVE then
            QuestionBox(g_sPath.."RoundSweetPieAskReady.txt", "NPCRoundSweetPieCallback", "")
        else
            local nothingHappened = true
            local defeats = 0
            local mobs = {"Phoenixes", "Titans", "Magmas", "BlackDragons"}
            for i, mob in mobs do
                if GetObjectiveState("Kill"..mob) == OBJECTIVE_ACTIVE then
                    if not IsObjectExists("LargeAmount"..mob) then
                        nothingHappened = nil
                        MessageBox(g_sPath.."RoundSweetPie"..mob.."Done.txt")
                        SetObjectiveState("Kill"..mob, OBJECTIVE_COMPLETED)
                        SetObjectiveVisible("Kill"..mob, nil)
                        if mob == "Phoenixes" then
                            TeachHeroSpell(heroName, SPELL_SUMMON_ELEMENTALS)
                            TeachHeroSpell(heroName, SPELL_CONJURE_PHOENIX)
                            TeachHeroSpell(heroName, SPELL_SUMMON_HIVE)
                        elseif mob == "Titans" then
                            TeachHeroSpell(heroName, SPELL_BERSERK)
                            TeachHeroSpell(heroName, SPELL_BLIND)
                            TeachHeroSpell(heroName, SPELL_HYPNOTIZE)
                        elseif mob == "Magmas" then
                            TeachHeroSpell(heroName, SPELL_VAMPIRISM)
                        else
                            GiveArtefact(heroName, ARTIFACT_NECROMANCER_PENDANT)
                            GiveArtefact(heroName, ARTIFACT_RING_OF_DEATH)
                            GiveArtefact(heroName, ARTIFACT_STAFF_OF_VEXINGS)
                            GiveArtefact(heroName, ARTIFACT_CLOAK_OF_MOURNING)
                        end
                    end
                elseif GetObjectiveState("Kill"..mob) == OBJECTIVE_COMPLETED then
                    defeats = defeats + 1
                end
            end
            if defeats == 4 then
                MessageBox(g_sPath.."RoundSweetPieFinished.txt")
            elseif nothingHappened then
                MessageBox(g_sPath.."RoundSweetPieNothing.txt")
            end
        end

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
        local objState = GetObjectiveState("CountPhoenixes")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."CountPhoenixesDescription2.txt")
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCAShaCallback", "")
        elseif objState == OBJECTIVE_ACTIVE then
            local rightAmount = GetObjectCreatures("UnknownPhoenix", CREATURE_PHOENIX)
            local currAmount = _GetCreatureCount(heroName)
            if rightAmount == currAmount then
                MessageBox({g_sPath.."AShaRightAmount.txt"; n_creature = rightAmount})
                GiveArtefact(heroName, ARTIFACT_BOOTS_OF_SWIFTNESS)
                SetObjectiveState("CountPhoenixes", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("CountPhoenixes", nil)
            else
                MessageBox(g_sPath.."AShaNotRightAmount.txt")
            end
        elseif ojbState == OBJECTIVE_COMPLETED then
            MessageBox(g_sPath.."AShaFinished.txt")
        end

    elseif npcName == "Aldens" then
        print("TODO")
    elseif npcName == "DubiousMage1" then
        local objState = GetObjectiveState("HarvestPoltergeists")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."HarvestPoltergeistsDescription2.txt")
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCDubiousMage1Callback", "")
        elseif objState == OBJECTIVE_ACTIVE then
            local polAmt = GetObjectCreatures(heroName, CREATURE_POLTERGEIST)
            if polAmt < 800 then
                MessageBox({g_sPath.."DubiousMage1NotEnough.txt"; n_creature = polAmt})
            else
                MessageBox(g_sPath.."DubiousMage1Enough.txt")
                BlockGame()
                _MergeCreatureSlots(heroName, CREATURE_POLTERGEIST)
                local temp = _GetCreatureSlots(heroName)
                if _GetCreatureCount(heroName) == polAmt then
                    polAmt = polAmt - 1
                end
                for i, slot in temp do
                    if slot[1] == CREATURE_POLTERGEIST then
                        slot[2] = slot[2] - polAmt
                        if slot[2] == 0 then slot[1] = 0 end
                    end
                end
                _SetCreatureSlots(heroName, temp)
                UnblockGame()
                GiveArtefact(heroName, ARTIFACT_WEREWOLF_CLAW_NECKLACE)
                SetObjectiveState("HarvestPoltergeists", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("HarvestPoltergeists", nil)
            end
        elseif objState == OBJECTIVE_COMPLETED then
            MessageBox(g_sPath.."DubiousMage1Finished.txt")
        end

    elseif npcName == "DubiousMage2" then
        local objState = GetObjectiveState("FindPrincesses")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."FindPrincessesDescription2.txt")
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCDubiousMage2Callback", "")
        elseif objState == OBJECTIVE_ACTIVE then
            local p1Found, p2Found = 0, 0
            if HasArtefact(heroName, ARTIFACT_FREIDA) then p1Found = 1 end
            if HasArtefact(heroName, ARTIFACT_PRINCESS) then p2Found = 1 end
            if p1Found + p2Found == 0 then
                MessageBox(g_sPath.."DubiousMage20Found.txt")
            elseif p1Found + p2Found == 1 then
                MessageBox(g_sPath.."DubiousMage21Found.txt")
            elseif p1Found + p2Found == 2 then
                MessageBox(g_sPath.."DubiousMage2BothFound.txt")
                GiveArtefact(heroName, ARTIFACT_MASK_OF_DOPPELGANGER)
                GiveArtefact(heroName, ARTIFACT_TWISTING_NEITHER)
                SetObjectiveState("FindPrincesses", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("FindPrincesses", nil)
            end
        elseif objState == OBJECTIVE_COMPLETED then
            MessageBox(g_sPath.."DubiousMage2Done.txt")
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
        local objState = GetObjectiveState("AnswerAllSphinxRiddles")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."AnswerAllSphinxRiddlesDescription2.txt")
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCMasterTieruCallback", "")
        elseif objState == OBJECTIVE_ACTIVE then
            local collected = 0
            for i = ARTIFACT_DRAGON_SCALE_ARMOR, ARTIFACT_DRAGON_FLAME_TONGUE do
                if HasArtefact(heroName, i) then collected = collected + 1 end
            end
            if collected < 8 then
                MessageBox({g_sPath.."MasterTieruNotFound.txt"; n_artifact = collected})
            else
                MessageBox(g_sPath.."MasterTieruFound.txt")
                TeachHeroSpell(heroName, SPELL_ARMAGEDDON)
                TeachHeroSpell(heroName, SPELL_UNHOLY_WORD)
                TeachHeroSpell(heroName, SPELL_HOLY_WORD)
                SetObjectiveState("AnswerAllSphinxRiddles", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("AnswerAllSphinxRiddles", nil)
            end
        elseif objState == OBJECTIVE_COMPLETED then
            MessageBox(g_sPath.."MasterTieruFinished.txt")
        end

    elseif npcName == "NamelessDragonKnight" then
        local objState = GetObjectiveState("DestroyInfernoOutpost")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."DestroyInfernoOutpostDescription2.txt")
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCNamelessDragonKnightCallback" , "")
        elseif objState == OBJECTIVE_ACTIVE then
            if _dwellingsRazed < 32 then
                MessageBox({g_sPath.."NamelessDragonKnightDwellingNotEnough.txt"; n_dwelling = _dwellingsRazed})
            else
                MessageBox(g_sPath.."NamelessDragonKnightDwellingEnough.txt")
            end
            if _panickyInfernoRazed then
                MessageBox(g_sPath.."NamelessDragonKnightTownDone.txt")
            else
                MessageBox(g_sPath.."NamelessDragonKnightTownNotDone.txt")
            end
            if _dwellingsRazed == 32 and _panickyInfernoRazed then
                MessageBox(g_sPath.."NamelessDragonKnightBothDone.txt")
                GiveArtefact(heroName, ARTIFACT_JINXING_BAND)
                GiveArtefact(heroName, ARTIFACT_JINXING_BAND)
                SetObjectiveState("DestroyInfernoOutpost", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("DestroyInfernoOutpost", nil)
                RemoveObject("Orlando")
            end
        elseif objState == OBJECTIVE_COMPLETED then
            MessageBox(g_sPath.."NamelessDragonKnightFinished.txt")
        end

    elseif npcName == "ThirdBro" then
        local objState = GetObjectiveState("AssassinateAlien")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."AssassinateAlienDescription2.txt")
            g_tabCallbackParams = {heroName}
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCThirdBroStartQuestCallback" , "")
        elseif objState == OBJECTIVE_ACTIVE then
            if heroName == _alienQuestHero then
                if IsHeroAlive("ufo") then
                    MessageBox(g_sPath.."NPCWaiting.txt")
                else
                    MessageBox(g_sPath.."ThirdBroFinished2.txt")
                    GiveArtefact(heroName, ARTIFACT_RING_OF_CELERITY)
                    GiveArtefact(heroName, ARTIFACT_RING_OF_CELERITY)
                    SetObjectEnabled("AlienPortal", nil)
                    SetObjectiveState("AssassinateAlien", OBJECTIVE_COMPLETED)
                    SetObjectiveVisible("AssassinateAlien", nil)
                end
            else
                MessageBox(g_sPath.."ThirdBroWrongHero.txt")
            end
        elseif objState == OBJECTIVE_COMPLETED then
            MessageBox(g_sPath.."ThirdBroFinished.txt")
        end

    elseif npcName == "SecondBro" then
        local obj1State = GetObjectiveState("FindBeginnerWand")
        local obj2State = GetObjectiveState("FindMarkalSkull")
        if obj1State < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."SecondBroIntro.txt")
            MessageBox(g_sPath.."FindBeginnerWandDescription2.txt")
            MessageBox(g_sPath.."FindMarkalSkullDescription2.txt")
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCSecondBroStartQuestCallback" , "")
        else
            if obj1State == OBJECTIVE_ACTIVE then
                if HasArtefact(heroName, ARTIFACT_BEGINNER_MAGIC_STICK) then
                    SetObjectiveState("FindBeginnerWand", OBJECTIVE_COMPLETED)
                    TeacHeroSpell(heroName, SPELL_ANTI_MAGIC)
                    TeacHeroSpell(heroName, SPELL_RESURRECT)
                    MessageBox(g_sPath.."SecondBroWandDone.txt")
                else
                    MessageBox(g_sPath.."SecondBroWandNotDone.txt")
                end
            end

            if obj2State == OBJECTIVE_ACTIVE then
                if HasArtefact(heroName, ARTIFACT_SKULL_OF_MARKAL) then
                    SetObjectiveState("FindMarkalSkull", OBJECTIVE_COMPLETED)
                    TeacHeroSpell(heroName, SPELL_IMPLOSION)
                    TeacHeroSpell(heroName, SPELL_DEEP_FREEZE)
                    MessageBox(g_sPath.."SecondBroSkullDone.txt")
                else
                    MessageBox(g_sPath.."SecondBroSkullNotDone.txt")
                end
            else
                MessageBox(g_sPath.."SecondBroSkullNotDone.txt")
            end

            if obj1State > OBJECTIVE_ACTIVE and obj2State > OBJECTIVE_ACTIVE then
                MessageBox(g_sPath.."CaeserfoxFinish.txt")
            end
        end

    elseif npcName == "BeastTrainer" then
        local objState = GetObjectiveState("ScareAwayWolves")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."ScareAwayWolvesDescription2.txt")
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCBeastTrainerCallback", "")
        elseif objState == OBJECTIVE_ACTIVE then
            if IsObjectExists("DangerousWolves") then
                MessageBox(g_sPath.."NPCWaiting.txt")
            else
                if GetGameVar("SarElamTrialWolvesBeaten") == "false" then
                    MessageBox(g_sPath.."BeastTrainerFinished.txt")
                    SetObjectiveState("ScareAwayWolves", OBJECTIVE_COMPLETED)
                    SetObjectiveVisible("ScareAwayWolves", nil)
                    for i = ARTIFACT_DWARVEN_MITHRAL_CUIRASS, ARTIFACT_DWARVEN_MITHRAL_SHIELD do
                        GiveArtefact(heroName, i)
                    end
                else
                    MessageBox(g_sPath.."BeastTrainerFailed.txt")
                    SetObjectiveState("ScareAwayWolves", OBJECTIVE_FAILED)
                end
            end
        elseif objState == OBJECTIVE_COMPLETED then
            MessageBox(g_sPath.."BeastTrainerDone.txt")
        elseif objState == OBJECTIVE_FAILED then
            MessageBox(g_sPath.."BeastTrainerFailed.txt")
        end

    elseif npcName == "Merchant" then
        local objState = GetObjectiveState("ScareAwayLandlord")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."ScareAwayLandlordDescription.txt")
            MessageBox(g_sPath.."ScareAwayLandlordDescription2.txt")
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCMerchantCallback", "")
        end

    elseif npcName == "ExoticMage" then
        local objState = GetObjectiveState("KillMagneticGolems")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."KillMagneticGolemsDescription2.txt")
            QuestionBox(g_sPath.."NPCConfirm.txt", "NPCExoticMageCallback", "")
        elseif objState == OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."NPCWaiting.txt")
        elseif objState == OBJECTIVE_COMPLETED then
            MessageBox(g_sPath.."ExoticMageGoodGreetings.txt")
        elseif objState == OBJECTIVE_FAILED then
            MessageBox(g_sPath.."ExoticMageBadGreetings.txt")
        end
    else
        print("Run into error in NPCVisitsTrigger! ", heroName, " ", npcName)
    end
end

function WitchHutTrainingCallback()
    GiveHeroSkill(g_tabCallbackParams[1], g_tabCallbackParams[2])
    g_setEnlightened[g_tabCallbackParams[1]] = true
    Play2DSound("/Sounds/_(Sound)/Buildings/WitchHut.xdb#xpointer(/Sound)")
end

function BuildingTouchTrigger(heroName, buildingName)
    if buildingName == "EnlightenedWitch" then
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
        print("Run into error in BuildingTouchTrigger! ", heroName, " ", trainerName)
    end
end

function LandLordAfterFightCallback(heroName, isWin)
    if isWin then
        MessageBox(g_sPath.."DescriptionUndyingPeasant.txt")
    end
end

function AreTestColemsDefeated(heroName, isWin)
    if isWin then
        MessageBox(g_sPath.."ExoticMageFinished.txt")
        SetObjectiveState("KillMagneticGolems", OBJECTIVE_COMPLETED)
        SetObjectiveVisible("KillMagneticGolems", nil)
        GiveArtefact(heroName, ARTIFACT_LION_HIDE_CAPE)
        GiveArtefact(heroName, ARTIFACT_CROWN_OF_COURAGE)
        GiveArtefact(heroName, ARTIFACT_NECKLACE_OF_BRAVERY)
    else
        MessageBox(g_sPath.."ExoticMageFailed.txt")
        SetObjectiveState("KillMagneticGolems", OBJECTIVE_FAILED)
    end
    RemoveObject("TestGolems")
    print("Result is, ", _GolemFightResult)
end

function NonHostileMonsterTrigger(heroName, monsterName)
    if monsterName == "UndyingPeasant" then
        StartCombat(heroName, nil, 1, CREATURE_LANDLORD, 1, nil, "LandLordAfterFightCallback")
    elseif monsterName == "TestGolems" then
        if RACE2PROF[_GetHeroRace(heroName)] == "Barbarian" then
            StartCombat(heroName, nil, 3,
                CREATURE_OBSIDIAN_GOLEM, 10000, CREATURE_OBSIDIAN_GOLEM, 10000, CREATURE_OBSIDIAN_GOLEM, 10000,
                nil, "AreTestColemsDefeated")
        else
            MessageBox(g_sPath.."ExoticMageError.txt")
        end
    else
        print("Run into error in NonHostileMonsterTrigger! ", heroName, " ", monsterName)
    end
end

function RecruiteWraithsThread()
    while true do
        local objState = GetObjectiveState("RecruiteWraiths")
        if objState == OBJECTIVE_ACTIVE then
            if GetObjectCreatures("Berein", CREATURE_WRAITH) >= 400 then
                MessageBox(g_sPath.."MarkalNPCFinished.txt")
                BlockGame()
                local mx, my, ml = GetObjectPos("Berein")
                MoveCamera(mx, my, ml, 20, 0.99, 0)
                sleep(10)
                SetObjectOwner("Berein", 8)
                sleep(2)
                SetObjectPos("Berein", 23, 8, 1)
                sleep(5)
                RemoveObject("Berein")
                CreateArtifact("", ARTIFACT_SHAWL_OF_GREAT_LICH, mx, my, ml)
                UnblockGame()
                SetObjectiveState("RecruiteWraiths", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("RecruiteWraiths", nil)
            end
            sleep(10)
        else
            sleep(10000)
        end
    end
end

function RecruiteWraithsCallback()
    Trigger(REGION_ENTER_AND_STOP_TRIGGER, "MarkalRegion", nil)
    SetObjectiveState("RecruiteWraiths", OBJECTIVE_ACTIVE)
    SetObjectEnabled("Berein", true)
    SetObjectOwner("Berein", 1)
    sleep(1)
    startThread(RecruiteWraithsThread)
end

function RegionEnterTrigger(heroName, regionName)
    if regionName == "VeyerRegion" then
        local objState = GetObjectiveState("ScareAwayVeyer")
        if HasHeroSkill(heroName, RANGER_FEAT_DISGUISE_AND_RECKON) then
            MessageBox(g_sPath.."VeyerDefeat.txt")
            BlockGame()
            local vx, vy, vl = GetObjectPos("Veyer")
            RemoveObject("Veyer")
            sleep(1)
            CreateArtifact("", ARTIFACT_RING_OF_HASTE, vx, vy, vl)
            if objState < OBJECTIVE_ACTIVE then
                SetObjectiveState("ScareAwayVeyer", OBJECTIVE_ACTIVE)
                sleep(1)
            end
            SetObjectiveState("ScareAwayVeyer", OBJECTIVE_COMPLETED)
            SetObjectiveVisible("ScareAwayVeyer", nil)
            Trigger(REGION_ENTER_AND_STOP_TRIGGER, "VeyerRegion", nil)
            UnblockGame()
        else
            MessageBox({g_sPath.."ScareAwayVeyerDescription.txt"; n_army = _GetCreatureCount(heroName)})
            if objState < OBJECTIVE_ACTIVE then SetObjectiveState("ScareAwayVeyer", OBJECTIVE_ACTIVE) end
        end
        SetObjectPos(heroName, 33, 28, 0)

    elseif regionName == "WulfstanRegion" then
        MessageBox(g_sPath.."WulfstanIntro.txt")
        SetObjectPos(heroName, 53, 36, 0)
        Trigger(REGION_ENTER_AND_STOP_TRIGGER, "WulfstanRegion", nil)
        SetObjectEnabled("Wulfstan", true)

    elseif regionName == "MarkalRegion" then
        MessageBox(g_sPath.."RecruiteWraithsDescription.txt")
        MessageBox(g_sPath.."RecruiteWraithsDescription2.txt")
        if length(GetPlayerHeroes(1)) < 8 then
            QuestionBox(g_sPath.."NPCConfirm.txt", "RecruiteWraithsCallback", "")
        else
            MessageBox(g_sPath.."MarkalNPCError.txt")
        end
        SetObjectPos(heroName, 26, 35)
    else
        print("Error in RegionEnterTrigger, ", heroName, "\t", regionName)
    end
end

function PrisonVisitTrigger(heroName, prisonName)
    if prisonName == "PrisonGottai" then
    elseif prisonName == "PrisonRuneProdigy" then
    elseif prisonName == "PrisonRolf" then
    end
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

function SphinxDenyTrigger(heroName, portalName)
    MessageBox(g_sPath.."SphinxDenied.txt")
end

function LandlordsMineCaptureTrigger(oldOwner, newOwner, heroName, dwellingName)
    if newOwner == 1 then
        if _GetCreatureCount(dwellingName) == 0 then
            SetObjectOwner(dwellingName, PLAYER_2)
            MessageBox(g_sPath.."MerchantFailed.txt")
        else
            local counts = 0
            for i = 1, 4 do
                if GetObjectOwner("LandlordsMine"..i) ==  1 then counts = counts + 1 end
            end
            if counts == 4 then
                MessageBox(g_sPath.."MerchantRunAway.txt")
                BlockGame()
                local vx, vy, vl = GetObjectPos("Merchant")
                MoveCamera(vx, vy, vl, 20, 0.99, 0)
                sleep(20)
                RemoveObject("Merchant")
                RemoveObject("MerchantAura")
                sleep(1)
                CreateArtifact("", ARTIFACT_NIGHTMARISH_RING, vx, vy, vl)
                CreateArtifact("", ARTIFACT_NIGHTMARISH_RING, vx, vy, vl)
                UnblockGame()
                SetObjectiveState("ScareAwayLandlord", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("ScareAwayLandlord", nil)
                for i = 1, 4 do
                    Trigger(OBJECT_CAPTURE_TRIGGER, "LandlordsMine"..i, nil)
                end
            end
        end
    end
end

function SetupScene()
    BlockGame()
    for i = 1, 15 do SetObjectEnabled("Treant"..i, nil) end

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

    -- Setup Sphinxes
    for i = 0, 7 do
        SetObjectEnabled("Sphinx"..i, nil)
        Trigger(OBJECT_TOUCH_TRIGGER, "Sphinx"..i, "SphinxDenyTrigger")
    end

    -- Setup Neutral Hero
    SetObjectOwner("ufo", 8)
    SetObjectOwner("Berein", 8)
    SetObjectEnabled("Berein", nil)
    SetObjectOwner("Wulfstan", 8)
    SetObjectEnabled("Wulfstan", nil)
    SetObjectOwner("Veyer", 8)
    SetObjectEnabled("Veyer", nil)
    AddHeroCreatures("Veyer", CREATURE_ARCHDEVIL, 9999998)
    AddHeroCreatures("Veyer", CREATURE_ARCH_DEMON, 9999999)
    AddHeroCreatures("Veyer", CREATURE_CYCLOP_UNTAMED, 9999999)
    AddHeroCreatures("Veyer", CREATURE_CYCLOP_BLOODEYED, 9999999)
    AddHeroCreatures("Veyer", CREATURE_RED_DRAGON, 9999999)
    AddHeroCreatures("Veyer", CREATURE_SHADOW_DRAGON, 9999999)
    AddHeroCreatures("Veyer", CREATURE_HORROR_DRAGON, 9999999)

    -- Setup Mine Triggers
    for i = 1, 4 do
        SetObjectEnabled("LandlordsMine"..i, nil)
    end

    -- Setup Prison Triggers
    Trigger(OBJECT_TOUCH_TRIGGER, "PrisonGottai", "PrisonVisitTrigger")
    Trigger(OBJECT_TOUCH_TRIGGER, "PrisonRuneProdigy", "PrisonVisitTrigger")
    Trigger(OBJECT_TOUCH_TRIGGER, "PrisonRolf", "PrisonVisitTrigger")

    -- Setup Region triggers
    Trigger(REGION_ENTER_AND_STOP_TRIGGER, "VeyerRegion", "RegionEnterTrigger")
    Trigger(REGION_ENTER_AND_STOP_TRIGGER, "WulfstanRegion", "RegionEnterTrigger")
    Trigger(REGION_ENTER_AND_STOP_TRIGGER, "MarkalRegion", "RegionEnterTrigger")

    -- Setup Building Visit trigger
    SetObjectEnabled("EnlightenedWitch", nil)
    Trigger(OBJECT_TOUCH_TRIGGER, "EnlightenedWitch", "BuildingTouchTrigger")

    -- Setup Monster Triggers
    SetObjectEnabled("UndyingPeasant", nil)
    Trigger(OBJECT_TOUCH_TRIGGER, "UndyingPeasant", "NonHostileMonsterTrigger")
    SetObjectEnabled("TestGolems", nil)
    Trigger(OBJECT_TOUCH_TRIGGER, "TestGolems", "NonHostileMonsterTrigger")

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

    -- Setup Dragon Guardians
    --for i, guardian in INDEX2GUARDIAN do SetObjectOwner(guardian.."Guardian", 8) end
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
