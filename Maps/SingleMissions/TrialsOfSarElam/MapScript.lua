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
PORT_SYLVAN = "/GameMechanics/RefTables/GhostMode/face_Shade.(Texture.xdb#xpointer(/Texture)"
PORT_ACADEMY = "/GameMechanics/RefTables/GhostMode/face_Phantasm.(Texture).xdb#xpointer(/Texture)"
PORT_DUNGEON = "/GameMechanics/RefTables/GhostMode/face_Banshee.(Texture).xdb#xpointer(/Texture)"
PORT_NECROPOLIS = "/GameMechanics/RefTables/GhostMode/face_Spectre.(Texture).xdb#xpointer(/Texture)"
PORT_INFERNO = "/GameMechanics/RefTables/GhostMode/face_Chimera.(Texture).xdb#xpointer(/Texture)"
PORT_FORTRESS = "/GameMechanics/RefTables/GhostMode/face_StoneSpirit.(Texture).xdb#xpointer(/Texture)"
PORT_STRONGHOLD = "/GameMechanics/RefTables/GhostMode/face_Spook.(Texture).xdb#xpointer(/Texture)"
PORT_TRAINING = "/UI/TownHall/haven/128/s3.xdb#xpointer(/Texture)"
PORT_DE = "/UI/TownHall/necropolis/128/s1.xdb#xpointer(/Texture)"
PORT_DIMEN = "/Textures/SpellBook______2618/Spells/Spell_DimensionalDoor.xdb#xpointer(/Texture)"

-- Names of the eight starting towns, mapped to GetPlayerRace() result
RACE2NAME = {
    [0] = "Haven", [1] = "Preserve", [2] = "Academy", [3] = "Dungeon",
    [4] = "Necropolis", [5] = "Inferno", [6] = "Dwarves", [7] = "Stronghold"}
NAME2RACE = {}

RACE2TOWN = {
    [0] = "HavenVillage", [1] = "SylvanVillage", [2] = "AcademyVillage", [3] = "DungeonVillage",
    [4] = "NecropolisVillage", [5] = "InfernoVillage", [6] = "FortressVillage", [7] = "StrongholdVillage"}
TOWN2RACE = {
    ["HavenVillage"] = 0, ["SylvanVillage"] = 1, ["AcademyVillage"] = 2, ["DungeonVillage"] = 3,
    ["NecropolisVillage"] = 4, ["InfernoVillage"] = 5, ["FortressVillage"] = 6, ["StrongholdVillage"] = 7}
-- Types of heroes, mapped to race id
RACE2PROF = {
    [0] = "Knight", [1] = "Ranger", [2] = "Wizard", [3] = "Warlock", [4] = "Necromancer", [5] = "DemonLord",
    [6] = "Runemage", [7] = "Barbarian"}

-- Names of the eight starting garrisons, mapped to GetPlayerRace() result
RACE2GARRISON = {
    [0] = "HavenGarrison", [1] = "SylvanGarrison", [2] = "AcademyGarrison", [3] = "DungeonGarrison", 
    [4] = "NecropolisGarrison", [5] = "InfernoGarrison", [6] = "FortressGarrison", [7] = "StrongholdGarrison"}
GARRISON2RACE = {}

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
INIT_CREATURE_COUNT = {[0] = {2080, 1040, 840, 400, 240, 160, 80}, [1] = {1080, 800, 600, 320, 240, 200, 80},
                       [2] = {1720, 1200, 760, 400, 320, 160, 80}, [3] = {680, 480, 520, 320, 240, 160, 80},
                       [4] = {1960, 1280, 760, 400, 240, 160, 120}, [5] = {1400, 1360, 680, 400, 280, 160, 80},
                       [6] = {1560, 1200, 600, 640, 280, 160, 80}, [7] = {2360, 1200, 920, 400, 400, 160, 80}}

-- Mapping for iteration of Sar family NPCs
INDEX2SAR = {"SarIssus", "SarAggreth", "SarAntor", "SarTigon", "SarBadon", "SarBahir", "SarShazzar"}
SAR2INDEX = {}
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
SAR_COMBAT_SCRIPT = "/"..g_sPath.."CombatSarChallenges.(Script).xdb#xpointer(/Script)"
MAGMA_COMBAT_SCRIPT = "/"..g_sPath.."CombatMagmaDragons.(Script).xdb#xpointer(/Script)"

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
    [CREATURE_SKELETON_ARCHER] = "Text/Game/Creatures/Necropolis/Skeleton_Archer.txt",
    [CREATURE_SHARP_SHOOTER] = "Text/Game/Creatures/Preserve/3rd/SharpShooter_Name.txt",
    [CREATURE_SKELETON] = "Text/Game/Creatures/Necropolis/Skeleton.txt",
    [CREATURE_WALKING_DEAD] = "Text/Game/Creatures/Necropolis/Walking_Dead.txt",
    [CREATURE_MANES] = "Text/Game/Creatures/Necropolis/Manes.txt",
    [CREATURE_VAMPIRE] = "Text/Game/Creatures/Necropolis/Vampire.txt",
    [CREATURE_LICH] = "Text/Game/Creatures/Necropolis/Lich.txt",
    [CREATURE_WIGHT] = "Text/Game/Creatures/Necropolis/Wight.txt",
    [CREATURE_BONE_DRAGON] = "Text/Game/Creatures/Necropolis/Bone_Dragon.txt",
    [CREATURE_PEASANT] = "Text/Game/Creatures/Haven/Peasant.txt",
    [CREATURE_MILITIAMAN] = "Text/Game/Creatures/Haven/Militiaman.txt",
    [CREATURE_LANDLORD] = "Text/Game/Creatures/Haven/Landlord.txt",
    [CREATURE_ARCHER] = "Text/Game/Creatures/Haven/Archer.txt",
    [CREATURE_MARKSMAN] = "Text/Game/Creatures/Haven/Marksman.txt",
    [CREATURE_LONGBOWMAN] = "Text/Game/Creatures/Haven/Longbowman.txt",
    [CREATURE_FOOTMAN] = "Text/Game/Creatures/Haven/Footman.txt",
    [CREATURE_SWORDSMAN] = "Text/Game/Creatures/Haven/Swordsman.txt",
    [CREATURE_VINDICATOR] = "Text/Game/Creatures/Haven/Vindicator.txt",
    [CREATURE_PRIEST] = "Text/Game/Creatures/Haven/Priest.txt",
    [CREATURE_CLERIC] = "Text/Game/Creatures/Haven/Cleric.txt",
    [CREATURE_ZEALOT] = "Text/Game/Creatures/Haven/Zealot.txt",
    [CREATURE_CAVALIER] = "Text/Game/Creatures/Haven/Cavalier.txt",
    [CREATURE_PALADIN] = "Text/Game/Creatures/Haven/Paladin.txt",
    [CREATURE_CHAMPION] = "Text/Game/Creatures/Haven/Champion.txt",
    [CREATURE_WAR_DANCER] = "Text/Game/Creatures/Preserve/War_Dancer.txt",
    [CREATURE_GOBLIN_TRAPPER] = "Text/Game/Creatures/Orcs/Goblin2.txt"}

SKILL_TEXTS = {
    [RANGER_FEAT_FOREST_GUARD_EMBLEM] = "Text/Game/Skills/Common/Leadership/ForestGuardEmblem/Name.txt",
    [HERO_SKILL_GOBLIN_SUPPORT] = "Text/Game/Skills/Common/WarMachines/GoblinSupport/Name.txt",
    [HERO_SKILL_DEFEND_US_ALL] = "Text/Game/Skills/Common/Defence/DefendUsAll/Name.txt"}

-- Dragon Guardian Fight
GUARDIAN2NAME = {"DarkGuardian", "FireGuardian", "AirGuardian", "EarthGuardian", "LightGuardian", "WaterGuardian", "SeventhGuardian", "ChaosGuardian"}
NAME2GUARDIAN = {}

GUARDIAN2ARMY = {[1] = {[0] = {CREATURE_ASSASSIN, 2000}, [1] = {CREATURE_BLOOD_WITCH, 2975}, [2] = {CREATURE_BLOOD_WITCH_2, 2033}, 
                        [3] = {CREATURE_MATRON, 350}, [4] = {CREATURE_MATRIARCH, 311},
                        [5] = {CREATURE_BLACK_DRAGON, 116}, [6] = {CREATURE_SHAMAN_HAG, 1400}},
                 [2] = {[0] = {CREATURE_FLAME_MAGE, 980}, [1] = {CREATURE_FLAME_KEEPER, 980}, [2] = {CREATURE_WARLORD, 650},
                        [3] = {CREATURE_BLACK_DRAGON, 300}, [4] = {CREATURE_PHOENIX, 300},
                        [5] = {0, 0}, [6] = {0, 0}},
                 [3] = {[0] = {CREATURE_IRON_GOLEM, 1}, [1] = {0, 0},
                        [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}},
                 [4] = {[0] = {CREATURE_SKELETON_ARCHER, 1423}, [1] = {CREATURE_SKELETON_ARCHER, 1423}, [2] = {CREATURE_DEMILICH, 240},
                        [3] = {CREATURE_SHADOW_DRAGON, 120}, [4] = {CREATURE_DISEASE_ZOMBIE, 1052},
                        [5] = {CREATURE_BANSHEE, 160}, [6] = {CREATURE_HORROR_DRAGON, 120}},
                 [5] = {[0] = {CREATURE_IRON_GOLEM, 1}, [1] = {0, 0},
                        [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}},
                 [6] = {[0] = {CREATURE_IRON_GOLEM, 1}, [1] = {0, 0},
                        [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}},
                 [7] = {[0] = {CREATURE_IRON_GOLEM, 1}, [1] = {0, 0},
                        [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}},
                 [8] = {[0] = {CREATURE_STOUT_DEFENDER, 9762}, [1] = {CREATURE_AXE_THROWER, 9762}, [2] = {CREATURE_WHITE_BEAR_RIDER, 3903},
                        [3] = {CREATURE_BATTLE_RAGER, 3901}, [4] = {CREATURE_FLAME_KEEPER, 1801},
                        [5] = {CREATURE_WARLORD, 973}, [6] = {CREATURE_THUNDER_THANE, 808}}}

GUARDIAN2PORTAL = {{82, 107}, {100, 107}, {82, 125}, {91, 129}, {100, 125}, {91, 102}, {77, 116}, {105, 116}}
GUARDIAN2AURA   = {{80, 105}, {102, 105}, {80, 127}, {91, 132}, {102, 127}, {91, 100}, {75, 116}, {107, 116}}
ISLAND_COORD = {{89, 117}, {89, 115}, {90, 114}, {92, 114}, {93, 115}, {93, 117}, {92, 118}, {90, 118}}
MAINLAND_COORD = {{45, 37}, {46, 37}, {47, 37}, {45, 36}, {46, 36}, {47, 36}, {45, 35}, {46, 35}}

GUARDIAN_CAGE = "/Maps/SingleMissions/TrialsOfSarElam/MapObjects/Decorations/LightCage.xdb#xpointer(/AdvMapStaticShared)"

SPIRIT2HEROES = {"AvatarOfDeath", "Evasive", "Furious", "MountainKing", "Prudent"}
SPIRIT2TEXTS = {"/Text/Game/Heroes/Specializations/Necropolis/AvatarOfDeath/Name.txt",
                "/Text/Game/Heroes/Specializations/Dungeon/Evasive/Name.txt",
                "/Text/Game/Heroes/Specializations/Inferno/Furious/Name.txt",
                "/Text/Game/Heroes/Specializations/Fortress/Mountain_King/Name.txt",
                "/Text/Game/Heroes/Specializations/Dungeon/Prudent/Name.txt"}

-- Mapping for iteration of Central Area NPCs
INDEX2NPC = {"MapMaker", "Piao", "Tang", "RoundSweetPie", "Pia", "TinY", "Yanshen", "ASha", "Aldens", "DubiousMage1", "DubiousMage2",
             "WindBellKL", "MasterTieru", "NamelessDragonKnight", "ThirdBro", "SecondBro", "BeastTrainer", "Merchant", "ExoticMage", 
             "BeastBreeder", "MegaGodzilla", "GuardianAvatar"}

ARKATH_SLOTS = {[0] = {CREATURE_SKELETON, 7},
                [1] = {0, 0}, [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}}
DEVIL_SLOTS = {[0] = {CREATURE_SKELETON, 40},
                     [1] = {0, 0}, [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}}
ELF_SLOTS = {[0] = {CREATURE_LONGBOWMAN, 50}, [1] = {CREATURE_SWORDSMAN, 40},
              [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}}
GOTTAI_SLOTS = {[0] = {CREATURE_GOBLIN, 500}, [1] = {CREATURE_GOBLIN, 500}, [2] = {CREATURE_GOBLIN, 500},
                [3] = {CREATURE_GOBLIN, 500}, [4] = {CREATURE_GOBLIN, 500}, [5] = {CREATURE_GOBLIN, 500}, [6] = {CREATURE_GOBLIN, 500}}

-- Hero Bank Locations
BANKLOCATIONS = {{26, 39}, {25, 39}, {24, 39}, {23, 39}, {22, 39},
                 {22, 38}, {22, 37}, {23, 37}, {24, 37}, {25, 37}}
CRYSTAL2INDEX = {["StorageCrystal1"] = 1, ["StorageCrystal2"] = 2, ["StorageCrystal3"] = 3, ["StorageCrystal4"] = 4,
                 ["StorageCrystal5"] = 5, ["StorageCrystal6"] = 6, ["StorageCrystal7"] = 7, ["StorageCrystal8"] = 8,
                 ["StorageCrystal9"] = 9, ["StorageCrystal10"] = 10}

-- Training and dark energy bank information
TRAINING_MAPPING = {
    [CREATURE_PEASANT] = CREATURE_ARCHER, [CREATURE_MILITIAMAN] = CREATURE_ARCHER, [CREATURE_LANDLORD] = CREATURE_ARCHER,
    [CREATURE_ARCHER] = CREATURE_FOOTMAN, [CREATURE_MARKSMAN] = CREATURE_FOOTMAN, [CREATURE_LONGBOWMAN] = CREATURE_FOOTMAN,
    [CREATURE_FOOTMAN] = CREATURE_PRIEST, [CREATURE_SWORDSMAN] = CREATURE_PRIEST, [CREATURE_VINDICATOR] = CREATURE_PRIEST,
    [CREATURE_PRIEST] = CREATURE_CAVALIER, [CREATURE_CLERIC] = CREATURE_CAVALIER, [CREATURE_ZEALOT] = CREATURE_CAVALIER}

RECRUIT_COST = {[CREATURE_ARCHER] = 50, [CREATURE_FOOTMAN] = 85, [CREATURE_PRIEST] = 600, [CREATURE_CAVALIER] = 1300}

DE_COST = {
    {CREATURE_SKELETON, 2}, {CREATURE_WALKING_DEAD, 4}, {CREATURE_MANES, 9}, {CREATURE_VAMPIRE, 20},
    {CREATURE_LICH, 46}, {CREATURE_WIGHT, 88}, {CREATURE_BONE_DRAGON, 126}}

-- Learn spell effects
EFFECT_REGEN = "/Effects/_(Effect)/Spells/Regeneration.(Effect).xdb#xpointer(/Effect)"
EFFECT_SPELL = "/Effects/_(Effect)/Spells/Bless.xdb#xpointer(/Effect)"
EFFECT_WARCRY = "/Effects/_(Effect)/Spells/Warcry/Battlecry/Battlecry.(Effect).xdb#xpointer(/Effect)"

SPELL2NAME = {
    [SPELL_REGENERATION] = "/Text/Game/Spells/Combat/Regeneration/Name.txt",
    [SPELL_SORROW] = "/GameMechanics/Spell/Combat_Spells/DarkMagic/Sorrow/SorrowName.txt",
    [SPELL_MAGIC_ARROW] = "/Text/Game/Spells/Combat/Magic_Arrow/Name.txt",
    [SPELL_LAND_MINE] = "/Text/Game/Spells/Combat/Land_Mine/Name.txt",
    [SPELL_TELEPORT] = "/Text/Game/Spells/Combat/Teleport/Name.txt",
    [SPELL_CELESTIAL_SHIELD] = "/Text/Game/Spells/Combat/Celestial_Shield/Name.txt",
    [SPELL_SUMMON_ELEMENTALS] = "/Text/Game/Spells/Combat/Summon_Elementals/Name.txt",
    [SPELL_CONJURE_PHOENIX] = "/Text/Game/Spells/Combat/ConjurePhoenix/Name.txt",
    [SPELL_SUMMON_HIVE] = "/Text/Game/Spells/Combat/SummonHive/Name.txt",
    [SPELL_BERSERK] = "/Text/Game/Spells/Combat/Berserk/Name.txt",
    [SPELL_BLIND] = "/Text/Game/Spells/Combat/Blind/Name.txt",
    [SPELL_HYPNOTIZE] = "/Text/Game/Spells/Combat/Hypnotize/Name.txt",
    [SPELL_VAMPIRISM] = "/Text/Game/Spells/Combat/Vampirism/Name.txt",
    [SPELL_PHANTOM] = "/Text/Game/Spells/Combat/Phantom/Name.txt",
    [SPELL_ARMAGEDDON] = "/Text/Game/Spells/Combat/Armageddon/Name.txt",
    [SPELL_UNHOLY_WORD] = "/Text/Game/Spells/Combat/Unholy_Word/Name.txt",
    [SPELL_HOLY_WORD] = "/Text/Game/Spells/Combat/Holy_Word/Name.txt",
    [SPELL_ANTI_MAGIC] = "/Text/Game/Spells/Combat/Anti-magic/Name.txt",
    [SPELL_RESURRECT] = "/Text/Game/Spells/Combat/Resurrect/Name.txt",
    [SPELL_IMPLOSION] = "/Text/Game/Spells/Combat/Implosion/Name.txt",
    [SPELL_DEEP_FREEZE] = "/Text/Game/Spells/Combat/DeepFreeze/Name.txt",
    [SPELL_ARCANE_CRYSTAL] = "Text/Game/Spells/Combat/ArcaneCrystal/Name.txt",
    [SPELL_BLADE_BARRIER] = "Text/Game/Spells/Combat/BladeBarrier/Name.txt"}

-- A set, store objectives for Sar family
g_setSarObjectives = {}

-- A set, record what factions have been won
g_setRaceUnlocked = {}
g_setRaceSeq = {1, 4, 5, 6, 2, 0, 3, 7}
g_iCurrRaceSeq = 1

-- A set, store heroes received Englightenment training
g_setEnlightened = {}

-- A set, store what heroes have learn the war cry
g_setWarCried1 = {}
g_setWarCried2 = {}

-- A table that stores all creatures an object has before swapping out
g_tabCreatureStored = {}

-- A set that stores all heroes in the hero bank
g_tabHeroesBanked = {}

-- Data exchange for callbacks
g_tabCallbackParams = {}

-- Training and dark energy bank
g_iDarkEnergy = 120000
g_iTrainingQuota = 800

-- Guardian locked heroes
g_tabHeroesLocked = {}
g_bCreaturesReset = 0
g_bAncientHeroHired = 0
g_bBonusAttributes = 0
g_sHeroTeleported = ""
g_sTownSummoned = ""

-- Control Animation
g_bRandomAnimDone = 0

-- Quest flags
g_bBypassedSarFamily = 0
g_sAlienQuestHero = ""
g_bPanickyInfernoRazed = 0
g_bDwellingsRazed = 0
g_bGoblinSupportUsed = 0
g_bDefendUsAllUsed = 0
g_bBattleCommanderUsed = 0

function _InvertTable(tableName)
    local result = {}
    for i, j in tableName do result[j] = i end
    return result
end

function _SameLoc(ax, ay, al, bx, by, bl)
    return ax == bx and ay == by and al == bl
end

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

function _SetCreatureSlots(objName, newCreatures)
    -- Given slots information newCreatures (a dict with slot number to a list which has creature id and amount)
    -- Set the object's stacks to be the same as newCreatures
    -- Must be blocked

    local creatureId, creatureCount = 0, 0
    local finSlot, finId = 7, 0
    for i = 0, 6 do
        creatureId, creatureCount = GetObjectArmySlotCreature(objName, i)
        if creatureId ~= 0 then RemoveObjectCreatures(objName, creatureId, creatureCount, i) end
    end
    sleep(1)
    for i = 0, 6 do
        creatureId, creatureCount = GetObjectArmySlotCreature(objName, i)
        if creatureId ~= 0 then
            finSlot = i
            finId = creatureId
        end
    end
    for i = 0, 6 do
        if newCreatures[i][1] ~= 0 and newCreatures[i][2] ~= 0 and i ~= finSlot then 
            AddObjectCreatures(objName, newCreatures[i][1], newCreatures[i][2], i)
        end
    end
    if finSlot < 7 then
        sleep(1)
        RemoveObjectCreatures(objName, finId, 1, finSlot)
        sleep(1)
        creatureId, creatureCount = GetObjectArmySlotCreature(objName, finSlot)
        if newCreatures[finSlot][1] ~= 0 then
            AddObjectCreatures(objName, newCreatures[finSlot][1], newCreatures[finSlot][2])
            sleep(1)
        end
        if creatureId ~= 0 then
            RemoveObjectCreatures(objName, finId, 1, finSlot)
            sleep(1)
        end
    else
        sleep(1)
    end
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
    _MergeCreatureSlots(heroName, creatureID)
    local temp = _GetCreatureSlots(heroName)
    if _GetCreatureCount(heroName) == creatureAmount then
        AddHeroCreatures(heroName, CREATURE_PEASANT, 1)
        sleep(1)
    end
    for i, slot in temp do
        if slot[1] == creatureID then
            slot[2] = slot[2] - creatureAmount
            if slot[2] == 0 then slot[1] = 0 end
        end
    end
    _SetCreatureSlots(heroName, temp)
end

function _CheckAllSpells(heroName)
    noSpell = {[16] = true, [22] = true, [27] = true, [30] = true, [33] = true, [34] = true, [36] = true, [37] = true, [41] = true} -- 1 ~ 43
    yesSpell = {48, 49, 235, 236, 237, 277, 278, 279, 280, 281, 283}
    local result = 43 - length(noSpell) + length(yesSpell)

    for i = 1, 43 do
        if not noSpell[i] then 
            if KnowHeroSpell(heroName, i) then
                result = result - 1
            else
                print("Hero does not know ", i)
            end
        end
    end

    for i, spellID in yesSpell do
        if KnowHeroSpell(heroName, spellID) then
            result = result - 1
        else
            print("Hero does not know ", i)
        end
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

    for i = 290, 295 do
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

function _TeachSpell(heroName, spellID)
    local effect = EFFECT_SPELL
    if RACE2PROF[_GetHeroRace(heroName)] ~= "Barbarian" then
        ShowFlyingSign({g_sPath.."SpellLearnt.txt"; sp_name = SPELL2NAME[spellID]}, heroName, -1, 8)
        TeachHeroSpell(heroName, spellID)
    else
        ShowFlyingSign(g_sPath.."SpellLearntError.txt", heroName, -1, 8)
    end
    sleep(6)
end

_pagedObj = {
    ["page"] = nil, ["port"] = nil, ["info"] = nil, ["desc"] = nil, 
    ["capt"] = nil, ["callback"] = nil, ["options"] = nil, ["next"] = nil, ["back"] = nil}

function _PagedTalkBoxCallback(pNum, cNum)
    local callback = ""
    local recall = nil
    if (not (_pagedObj["next"] or _pagedObj["back"])) or cNum == 0 then
        callback = _pagedObj["callback"].."("..cNum..")"
    elseif _pagedObj["back"] and cNum == _pagedObj["back"] then
        _pagedObj["page"] = 1
        recall = true
    elseif _pagedObj["next"] and cNum == _pagedObj["next"] then
        _pagedObj["page"] = _pagedObj["page"] + 1
        recall = true
    else
        callback = _pagedObj["callback"].."("..((_pagedObj["page"] - 1) * 4 + cNum)..")"
    end
    if recall then
        _PagedTalkBox(_pagedObj["port"], _pagedObj["info"], _pagedObj["desc"], _pagedObj["capt"], _pagedObj["callback"], _pagedObj["options"])
    else
        _pagedObj = {}
        parse(callback)()
    end
end

function _PagedTalkBox(port, info, desc, capt, callback, options)
    args = {}
    if not _pagedObj["page"] then
        _pagedObj["page"] = 1
        _pagedObj["port"] = port
        _pagedObj["info"] = info
        _pagedObj["desc"] = desc
        _pagedObj["capt"] = capt
        _pagedObj["callback"] = callback
        _pagedObj["options"] = options
    end
    if length(options) <= 5 then
        if options[1] then args[1] = {g_sPath.."TalkBoxOption.txt"; texts = options[1]} end
        if options[2] then args[2] = {g_sPath.."TalkBoxOption.txt"; texts = options[2]} end
        if options[3] then args[3] = {g_sPath.."TalkBoxOption.txt"; texts = options[3]} end
        if options[4] then args[4] = {g_sPath.."TalkBoxOption.txt"; texts = options[4]} end
        if options[5] then args[5] = {g_sPath.."TalkBoxOption.txt"; texts = options[5]} end
    else
        local startI = (_pagedObj["page"] - 1) * 4
        for i = 1, 4 do
            if options[startI + i] then
                args[i] = {g_sPath.."TalkBoxOption.txt"; texts = options[startI + i]}
            else
                args[i] = g_sPath.."TalkBoxBack.txt"
                _pagedObj["next"] = nil
                _pagedObj["back"] = i
                break
            end
        end
        if options[startI + 5] then
            args[5] = g_sPath.."TalkBoxNext.txt"
            _pagedObj["next"] = 5
            _pagedObj["back"] = nil
        else
            args[5] = g_sPath.."TalkBoxBack.txt"
            _pagedObj["next"] = nil
            _pagedObj["back"] = 5
        end
    end

    TalkBoxForPlayers(
        GetPlayerFilter(1),
        port,
        info,
        {g_sPath.."TalkBoxMain.txt"; texts = desc},
        nil,
        "_PagedTalkBoxCallback",
        1,
        capt,
        nil,
        0,
        args[1], args[2], args[3], args[4], args[5])
end

function GarrisonVisitingMessageTrigger(heroName, garrisonName)
    -- Triggered when any hero visits a garrison
    -- Give error message when player haven't own the town yet
    if g_setRaceUnlocked[GARRISON2RACE[garrisonName]] == nil then
        MessageBox(g_sPath.."GarrisonDenied.txt")
    end
end

function SarIssusGreetingsCallback()
    BlockGame()
    PlayVisualEffect(
        "/Effects/_(Effect)/Spells/Teleport_Start.xdb#xpointer(/Effect)", "SarIssus")
    sleep(2)
    Play3DSound(
        "/Sounds/_(Sound)/Spells/TeleportStart.xdb#xpointer(/Sound)",
        46, 38, 0)
    SetObjectPos("SarIssus", g_tabCallbackParams[1], g_tabCallbackParams[2])
    SetObjectRotation("SarIssus", 90)
    sleep(10)
    SetObjectPos("ArtBonusSarStaff", 45, 37, 0)
    sleep(2)
    SetObjectPos("ArtBonusSarCrown", 46, 37, 0)
    sleep(2)
    SetObjectPos("ArtBonusSarRing", 47, 37, 0)
    sleep(2)
    SetObjectPos("ArtBonusSarRobe", 45, 36, 0)
    sleep(2)
    SetObjectPos("ArtBonusDarkRitualScroll1", 46, 36, 0)
    sleep(2)
    SetObjectPos("ArtBonusDarkRitualScroll2", 47, 36, 0)
    sleep(2)
    SetObjectPos("ArtBonusDarkRitualScroll3", 45, 35, 0)
    sleep(2)
    SetObjectPos("ArtBonusDarkRitualScroll4", 46, 35, 0)
    sleep(2)
    SetObjectPos("ArtBonusDarkRitualScroll5", 47, 35, 0)
    sleep(2)
    SetPlayerResource(1, WOOD, 400, g_tabCallbackParams[3])
    SetPlayerResource(1, ORE, 400, g_tabCallbackParams[3])
    SetPlayerResource(1, MERCURY, 200, g_tabCallbackParams[3])
    SetPlayerResource(1, CRYSTAL, 200, g_tabCallbackParams[3])
    SetPlayerResource(1, SULFUR, 200, g_tabCallbackParams[3])
    SetPlayerResource(1, GEM, 200, g_tabCallbackParams[3])
    SetPlayerResource(1, GOLD, 1000000,g_tabCallbackParams[3])
    UnblockGame()
    SetObjectiveState("CompleteSarFamily", OBJECTIVE_ACTIVE)
    Trigger(OBJECT_CAPTURE_TRIGGER, g_tabCallbackParams[4], nil)
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
    SetObjectRotation(heroName, 0)
    SetObjectPos(heroName, 46, 39, 0)
    MoveCamera(46, 39, 0, 40, 0.90, 0)
    sleep(20)
    local origPosX, origPosY = GetObjectPos("SarIssus")
    g_tabCallbackParams = {origPosX, origPosY, heroName, garrisonName}
    SetObjectPos("SarIssus", 46, 38, 0)
    PlayVisualEffect(
        "/Effects/_(Effect)/Spells/Teleport_End.xdb#xpointer(/Effect)", "", "",
        46, 38)
    sleep(2)
    Play3DSound(
        "/Sounds/_(Sound)/Spells/TeleportEnd.xdb#xpointer(/Sound)",
        46, 38, 0)
    SetObjectRotation("SarIssus", 180)
    MoveCamera(45, 38, 0, 40, 3.14/3, 0)
    sleep(20)
    UnblockGame()

    MessageBox(g_sPath.."SarIssusGreeting.txt", "SarIssusGreetingsCallback")
end

function UnblockPaths()
    BlockGame()
    MoveCamera(45, 26, 0, 60, 0.99, 0)
    sleep(20)
    for i = 1, 18 do
        Trigger(OBJECT_TOUCH_TRIGGER, "BlockingAura"..i, nil)
        local bx, by, bl = GetObjectPos("BlockingAura"..i)
        CreateStatic(
            "BlockingPuppet"..i,
            "/Maps/SingleMissions/TrialsOfSarElam/MapObjects/NPCs/BlockingPuppet.xdb#xpointer(/AdvMapStaticShared)",
            bx, by, bl)
    end
    sleep(1)
    for i = 1, 18 do
        PlayVisualEffect("/Effects/_(Effect)/Spells/Plague.xdb#xpointer(/Effect)", "BlockingPuppet"..i)
    end
    Play2DSound("/Sounds/_(Sound)/Spells/Plague.xdb#xpointer(/Sound)")
    sleep(10)
    for i = 1, 18 do
        PlayObjectAnimation("BlockingPuppet"..i, "hit", ONESHOT)
    end
    sleep(10)
    for i = 1, 18 do
        PlayObjectAnimation("BlockingPuppet"..i, "death", ONESHOT_STILL)
    end
    sleep(30)
    for i = 1, 18 do
        RemoveObject("BlockingAura"..i)
        RemoveObject("BlockingPuppet"..i)
    end
    sleep(5)
    UnblockGame()
    Trigger(OBJECTIVE_STATE_CHANGE_TRIGGER, "CompleteSarFamily", nil)
    MessageBox(g_sPath.."BlockingAuraRemoved.txt")
end

function SarFinishedCallback(heroName, isWin)
    sarName = GetGameVar("SarElamTrialSarChallenge")
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
                    _TeachSpell(heroName, art)
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
                    for j = 1, 7 do
                        AddObjectCreatures(RACE2TOWN[currRace], CREATURE_IDS_BY_RACE[currRace][j], INIT_CREATURE_COUNT[currRace][j])
                    end
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
        sleep(1)
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
        UnblockPaths()
    end

end

function SarFamilyStartFight()
    local heroName, sarName = g_tabCallbackParams[1], g_tabCallbackParams[2]
    SetGameVar("SarElamTrialSarChallenge", sarName)

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
    local expReward = {1980, 1610, 1980, 2277, 4080, 640, 1320}

    local heroName = g_tabCallbackParams[1]
    for i = 1, 7 do
        local sarName = INDEX2SAR[i]
        local questName = sarName.."Challenge"
        if GetObjectiveState(questName) ~= OBJECTIVE_COMPLETED then
            ChangeHeroStat(heroName, 0, expReward[i])
            for j, art in SAR2ARTEFACTS[sarName] do
                if sarName == "SarBahir" then
                    _TeachSpell(heroName, art)
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
        if GetObjectOwner(RACE2TOWN[i]) ~= 1 then
            SetObjectOwner(RACE2TOWN[i], 1)
            for j = 1, 7 do
                AddObjectCreatures(RACE2TOWN[i], CREATURE_IDS_BY_RACE[i][j], INIT_CREATURE_COUNT[i][j])
            end
        end
        if not IsObjectEnabled(RACE2GARRISON[i]) then SetObjectEnabled(RACE2GARRISON[i], true) end
        if GetObjectOwner(RACE2GARRISON[i]) ~= 1 then SetObjectOwner(RACE2GARRISON[i], true) end
    end

    if GetObjectiveState("CompleteSarFamily") < OBJECTIVE_ACTIVE then
        SetObjectiveState("CompleteSarFamily", OBJECTIVE_ACTIVE)
    end
    sleep(1)
    if GetObjectiveState("CompleteSarFamily") == OBJECTIVE_ACTIVE then
        SetObjectiveState("CompleteSarFamily", OBJECTIVE_COMPLETED)
        UnblockPaths()
    end

    g_bBypassedSarFamily = 1
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
                SetObjectiveState("LearnAllSpells", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("LearnAllSpells", nil)
                _TeachSpell(heroName, SPELL_CELESTIAL_SHIELD)
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
                SetObjectiveState("LearnAllRunes", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("LearnAllRunes", nil)
                GiveArtefact(heroName, ARTIFACT_RUNIC_WAR_AXE)
                GiveArtefact(heroName, ARTIFACT_RUNIC_WAR_HARNESS)
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
                SetObjectiveState("LearnAllWarCries", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("LearnAllWarCries", nil)
                GiveArtefact(heroName, ARTIFACT_SANDALS_OF_THE_SAINT)
            else
                MessageBox(g_sPath.."MapMakerOption3AllWarCriesNotOK.txt")
            end
            allDone = nil
        end

        if allDone then MessageBox(g_sPath.."MapMakerOption3AllDone.txt") end

    elseif cNum == 3 then
        if g_bBypassedSarFamily == 1 then MessageBox(g_sPath.."MapMakerOption4Finished.txt")
        else QuestionBox(g_sPath.."MapMakerOption4Description.txt", "NPCMapMakerSarFamilyCallback", "")
        end
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
    if length(GetPlayerHeroes(1)) < 8 then
        local temp = _GetHeroInfo(g_tabHeroesBanked[CRYSTAL2INDEX[crystalName]])
        g_tabCallbackParams = {crystalName, visitName}
        QuestionBox({g_sPath.."YanshenWithdrawConfirm.txt"; h_level = temp[1],
                     h_prof = temp[2], h_name = temp[3]}, "StorageCrystalCallback", "")
    else
        MessageBox(g_sPath.."GuardianAvatarBonus2Refused.txt")
    end
end

function NPCYanshenCallback()
    for i = 1, 10 do
        if not g_tabHeroesBanked[i] then
            BlockGame()
            g_tabHeroesBanked[i] = g_tabCallbackParams[1]
            CreateStatic("CrystalAura"..i,
                         RACE2AURA[_GetHeroRace(g_tabCallbackParams[1])],
                         BANKLOCATIONS[i][1], BANKLOCATIONS[i][2], 0)
            SetObjectOwner(g_tabCallbackParams[1], 8)
            sleep(1)
            SetObjectPos("StorageCrystal"..i, BANKLOCATIONS[i][1], BANKLOCATIONS[i][2], 0)
            SetObjectPos(g_tabCallbackParams[1], HERO_DUMP_POS[1], HERO_DUMP_POS[2], 1)
            OverrideObjectTooltipNameAndDescription("StorageCrystal"..i, g_tabCallbackParams[2][3], "")
            UnblockGame()
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
                 RACE2AURA[NAME2RACE["Academy"]],
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
    noUpgrades = _InvertTable(noUpgrades)

    if cNum ==  1 then
        local temp = _GetCreatureSlots(heroName)
        for i = 0, 6 do
            local creatureID = temp[i][1]
            if creatureID == 0 or noUpgrades[creatureID] then
                -- Do nothing
                print("In the 1st if statement")
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
            elseif creatureID >= CREATURE_DEFENDER and creatureID <= CREATURE_MAGMA_DRAGON then
                if mod(temp[i][1], 2) == 1 then temp[i][1] = creatureID - 1 end
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
        print("Option3")
        SetPlayerResource(1, WOOD, 400, heroName)
        SetPlayerResource(1, ORE, 400, heroName)
        SetPlayerResource(1, MERCURY, 200, heroName)
        SetPlayerResource(1, CRYSTAL, 200, heroName)
        SetPlayerResource(1, SULFUR, 200, heroName)
        SetPlayerResource(1, GEM, 200, heroName)
        SetPlayerResource(1, GOLD, 1000000, heroName)

    elseif cNum == 4 then
        local nothing = nil
        local creatureID, creatureAmount, skillID
        if g_bGoblinSupportUsed == 0 and HasHeroSkill(heroName, HERO_SKILL_GOBLIN_SUPPORT) then
            creatureID = CREATURE_GOBLIN_TRAPPER
            creatureAmount = 2240
            skillID = HERO_SKILL_GOBLIN_SUPPORT
            g_bGoblinSupportUsed = 1
        elseif g_bDefendUsAllUsed == 0 and HasHeroSkill(heroName, HERO_SKILL_DEFEND_US_ALL) then
            creatureID = CREATURE_GOBLIN_TRAPPER
            creatureAmount = 960
            skillID = HERO_SKILL_DEFEND_US_ALL
            g_bDefendUsAllUsed = 1
        elseif g_bBattleCommanderUsed == 0 and HasHeroSkill(heroName, RANGER_FEAT_FOREST_GUARD_EMBLEM) then
            creatureID = CREATURE_WAR_DANCER
            creatureAmount = 960
            skillID = RANGER_FEAT_FOREST_GUARD_EMBLEM
            g_bBattleCommanderUsed = 1
        else
            nothing = true
        end
        if g_bGoblinSupportUsed == 1 and g_bDefendUsAllUsed == 1 and g_bBattleCommanderUsed == 1 and (not creatureID) then
            MessageBox(g_sPath.."WindBellKLOption4AllClaimed.txt")
        else
            if nothing then
                MessageBox(g_sPath.."WindBellKLOption4Nothing.txt")
            else
                AddHeroCreatures(heroName, creatureID, creatureAmount)
                sleep(2)
                ShowFlyingSign({g_sPath.."WindBellKLOption4Awarded.txt"; n_amount = creatureAmount, c_creature = CREATURE_TEXTS[creatureID], c_skill = SKILL_TEXTS[skillID]}, heroName, -1, 8)
            end
        end
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
        g_bDwellingsRazed = g_bDwellingsRazed + 1
    end
end

function InfernoTownCaptureTrigger(oldOwner, newOwner, heroName, townName)
    if newOwner == 1 then
        RazeTown("PanickyInferno")
        g_bPanickyInfernoRazed = 1
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
    g_sAlienQuestHero = g_tabCallbackParams[1]
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

function MegaGodzillaConfirmCallback()
    local heroName = g_tabCallbackParams[1]
    if GetHeroLevel(heroName) > 5 then
        MessageBox({g_sPath.."MegaGodzillaHeroWrong.txt"; n_limit = 5, n_actual = GetHeroLevel(heroName)})
        return
    end
    g_tabCallbackParams[2] = _GetCreatureSlots(heroName)
    BlockGame()
    _SetCreatureSlots(heroName, ARKATH_SLOTS)
    _ConfiscateWarMachines(heroName)
    sleep(1)
    UnblockGame()
    StartCombat(heroName, nil, 3,
                CREATURE_MAGMA_DRAGON, 100, CREATURE_MAGMA_DRAGON, 100, CREATURE_PEASANT, 1,
                MAGMA_COMBAT_SCRIPT, "MegaGodzillaCombatCallback", NOOB2_ARENA)
end

function MegaGodzillaCombatCallback(heroName, isWin)
    if isWin then
        SetObjectRotation("MegaGodzilla", 0)
        MessageBox(g_sPath.."MegaGodzillaSuccess.txt")
        RemoveObject("MegaGodzilla")
        BlockGame()
        _SetCreatureSlots(heroName, g_tabCallbackParams[2])
        UnblockGame()
        SetObjectiveState("ArkathPuzzle", OBJECTIVE_COMPLETED)
        SetObjectiveVisible("ArkathPuzzle", nil)
    else
        SetObjectiveState("ArkathPuzzle", OBJECTIVE_FAILED)
        MessageBox(g_sPath.."MegaGodzillaFail.txt")
    end
end

function BeastBreederCallback()
    SetObjectiveState("BreedWolves", OBJECTIVE_ACTIVE)
    AddObjectCreatures(g_tabCallbackParams[1], CREATURE_WOLF, 10)
end

function GrailMonitoringThread()
    while true do
        local heroes = GetPlayerHeroes(1)
        for i, hero in heroes do
            if HasArtefact(hero, ARTIFACT_GRAAL) then
                BlockGame()
                for i, hero in g_tabHeroesLocked do
                    if IsObjectExists(hero) then
                        SetObjectPos(hero, MAINLAND_COORD[i][1], MAINLAND_COORD[i][2])
                    end
                end
                sleep(20)
                SetObjectiveState("CompleteSarElamTrial", OBJECTIVE_COMPLETED)
                local nx, ny, nl = GetObjectPos("GuardianAvatar")
                MoveCamera(nx, ny, nl, 20, 0.99, 0)
                SetObjectiveState("FinalSendOff", OBJECTIVE_ACTIVE)
                sleep(20)
                UnblockGame()
                MessageBox(g_sPath.."FinalSendOffDescription.txt")
                return
            end
        end
        sleep(10)
    end
end

function GuardianMonitoringThread()
    while true do
        for i, loc in GUARDIAN2AURA do
            local gx, gy, gl = loc[1], loc[2], 0
            local heroes = GetPlayerHeroes(1)
            for j, hero in g_tabHeroesLocked do
                if hero and not IsObjectExists(hero) then
                    RemoveObject("GuardianCage"..j)
                    g_tabHeroesLocked[j] = nil
                end
            end
            for j, hero in heroes do
                local hx, hy, hl = GetObjectPos(hero)
                if _SameLoc(gx, gy, gl, hx, hy, hl) and (not IsObjectExists("GuardianCage"..i)) then
                    BlockGame()
                    PlayVisualEffect("/Effects/_(Effect)/Spells/CelestialShield.xdb#xpointer(/Effect)", hero)
                    Play3DSound("/Sounds/_(Sound)/Spells/CelestialShield.xdb#xpointer(/Sound)", hx, hy, hl)
                    sleep(25)
                    CreateStatic("GuardianCage"..i, GUARDIAN_CAGE, gx, gy, gl)
                    g_tabHeroesLocked[i] = hero
                    UnblockGame()
                end
            end
        end
        local allDone = true
        for i = 1, 8 do
            if not g_tabHeroesLocked[i] then
                allDone = nil
            end
        end
        if allDone then
            BlockGame()
            MoveCamera(91, 118 - 2, 0, 110, 0.99, 0)
            OpenCircleFog(91, 116, 0, 10, 1)
            sleep(10)
            PlayVisualEffect("/Effects/_(Effect)/Spells/Armageddon.xdb#xpointer(/Effect)", "", "", 92, 117, 0, 0, 0)
            sleep(11)
            Play3DSound("/Sounds/_(Sound)/Spells/Armageddon.xdb#xpointer(/Sound)", 92, 117, 0)
            sleep(15)
            RemoveObject("CentralIsland")
            sleep(15)
            for i, hero in g_tabHeroesLocked do
                if IsObjectExists(hero) then
                    SetObjectPos(hero, ISLAND_COORD[i][1], ISLAND_COORD[i][2])
                end
            end
            sleep(10)
            for j, aura in GUARDIAN2AURA do RemoveObject("GuardianCage"..j) end
            Trigger(OBJECT_TOUCH_TRIGGER, "DragonGuardianPortal", nil)
            SetDisabledObjectMode("DragonGuardianPortal", DISABLED_BLOCKED)
            startThread(GrailMonitoringThread)
            UnblockGame()
            break
        end
        sleep(10)
    end
end

function GuardianAvatarInfoCallback(cNum)
    if cNum > 0 and cNum <= length(GUARDIAN2NAME) then
        MessageBox(g_sPath.."Description"..GUARDIAN2NAME[cNum]..".txt")
    end
end

function GuardianAvatarBonus1Callback()
    local empty0 = {[0] = {0, 0}, [1] = {0, 0}, [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}, [7] = {0, 0}}
    local empty1 = {[0] = {1, 1}, [1] = {0, 0}, [2] = {0, 0}, [3] = {0, 0}, [4] = {0, 0}, [5] = {0, 0}, [6] = {0, 0}, [7] = {0, 0}}
    BlockGame()
    for i = 0, 7 do
        if GetObjectOwner(RACE2GARRISON[i]) == 1 then _SetCreatureSlots(RACE2GARRISON[i], empty0) end
        if GetObjectOwner(RACE2TOWN[i]) == 1 then _SetCreatureSlots(RACE2TOWN[i], empty0) end
    end
    for i = 1, 4 do
        if GetObjectOwner("LandlordsMine"..i) == 1 then _SetCreatureSlots("LandlordsMine"..i, empty0) end
    end
    if GetObjectOwner("Mine1") == 1 then _SetCreatureSlots("Mine1", empty0) end
    for i, hero in GetPlayerHeroes(1) do _SetCreatureSlots(hero, empty1) end
    for i, hero in g_tabHeroesBanked do  _SetCreatureSlots(hero, empty1) end
    for i = 0, 7 do
        for j = 1, 7 do
            if GetObjectOwner(RACE2TOWN[i]) == 1 then
                AddObjectCreatures(RACE2TOWN[i], CREATURE_IDS_BY_RACE[i][j], INIT_CREATURE_COUNT[i][j])
            end
        end
    end
    g_iDarkEnergy = 120000
    g_iTrainingQuota = 800
    g_bGoblinSupportUsed = 0
    g_bDefendUsAllUsed = 0
    g_bBattleCommanderUsed = 0
    g_bCreaturesReset = 1
    UnblockGame()
    MessageBox(g_sPath.."GuardianAvatarBonus1Done.txt")
end

function GuardianAvatarBonus2Callback1(cNum)
    if cNum >= 1 and cNum <= 5 then
        g_tabCallbackParams = {SPIRIT2HEROES[cNum]}
        local options = {}
        for i = 0, 7 do
            options[i + 1] = "GameMechanics/RefTables/HeroClass/HeroClass"..RACE2PROF[i]..".txt"
        end
        _PagedTalkBox(
            PORT_ACADEMY,
            g_sPath.."DescriptionGuardianAvatar.txt",
            g_sPath.."GuardianAvatarBonus2Prof.txt",
            g_sPath.."NameGuardianAvatar.txt",
            "GuardianAvatarBonus2Callback2", options)
    end
end

function GuardianAvatarBonus2Callback2(cNum)
    if cNum >= 1 and cNum <= 8 then
        BlockGame()
        for i, hero in GetPlayerHeroes(1) do
            local hx, hy, hl = GetObjectPos(hero)
            if (hx == 43 and hy == 28 and hl == 0) or (hx == 44 and hy == 28 and hl == 0) then
                SetObjectPos(hero, hx + 2, hy, 0)
            end
        end
        MoveCamera(43, 28 - 1, 0, 20, 0.99, 0)
        sleep(15)
        local target = g_tabCallbackParams[1]..RACE2PROF[cNum - 1]
        PlayVisualEffect("/Effects/_(Effect)/Modes/Ghost/GhostFX/cast.(Effect).xdb#xpointer(/Effect)", "GuardianAvatar", "")
        SetObjectPos(target, 43, 28, 0)
        sleep(1)
        PlayVisualEffect("/Effects/_(Effect)/Spells/Resurrect.xdb#xpointer(/Effect)", target, "")
        Play3DSound("/Sounds/_(Sound)/Spells/Resurrect.xdb#xpointer(/Sound)", 43, 28, 0)
        sleep(20)
        g_bAncientHeroHired = 1
        SetObjectOwner(target, 1)
        UnblockGame()
    end
end

function SummonVillageCallback(cNum)
    if cNum >= 1 then
        for i, hero in GetPlayerHeroes(1) do
            if IsHeroInTown(hero, g_CallbackParams[1][cNum]) then
                MessageBox({g_sPath.."SummonVillageHasHero.txt";
                            h_name = _GetHeroInfo(hero)[3], t_name = g_sPath.."Name"..g_CallbackParams[1][cNum]..".txt"})
                return
            end
        end
        BlockGame()
        g_sTownSummoned = g_CallbackParams[1][cNum]
        Trigger(CUSTOM_ABILITY_TRIGGER, nil)
        ControlHeroCustomAbility(g_sHeroTeleported, CUSTOM_ABILITY_3, CUSTOM_ABILITY_NOT_PRESENT)
        SetObjectEnabled("FreydaGarrison", true)
        MakeTownMovable(g_sTownSummoned)
        local tx, ty, tl = GetObjectPos(g_sTownSummoned)
        sleep(1)
        MoveCamera(tx, ty -1, tl, 40, 0.99, 0)
        sleep(15)
        local effect = "/Effects/_(Effect)/Spells/DivineVengeance/FX_DivineVengeance.(Effect).xdb#xpointer(/Effect)"
        PlayVisualEffect(effect, g_sTownSummoned, "", -3, -3, 0)
        PlayVisualEffect(effect, g_sTownSummoned, "", -3, 3, 0)
        Play2DSound("/Maps/Scenario/A2C3M1/SummonEarthsound.xdb#xpointer(/Sound)")
        sleep(1)
        PlayVisualEffect(effect, g_sTownSummoned, "", 3, -3, 0)
        PlayVisualEffect(effect, g_sTownSummoned, "", 3, 3, 0)
        sleep(3)
        PlayVisualEffect(effect, g_sTownSummoned, "", 1, -2, 0)
        sleep(5)
        SetObjectRotation(g_sTownSummoned, -90);
        SetObjectPos(g_sTownSummoned, 40, 117, 0);
        Play2DSound("/Maps/Scenario/A2C3M1/SummonEarthsound.xdb#xpointer(/Sound)")
        MoveCamera(40, 117 - 1, 0, 40, 0.99, 0)
        sleep(5)
        tx, ty, tl = GetObjectPos(g_sTownSummoned)
        PlayVisualEffect(effect, "", "", tx - 3, ty - 3, 0)
        PlayVisualEffect(effect, "", "", tx - 3, ty + 3, 0)
        sleep(1)
        PlayVisualEffect(effect, "", "", tx + 3, ty - 3, 0)
        PlayVisualEffect(effect, "", "", tx + 3, ty + 3, 0)
        sleep(3)
        PlayVisualEffect(effect, "", "", tx + 1, ty - 2, 0)
        sleep(10)
        SetObjectiveState("SummonVillage", OBJECTIVE_COMPLETED)
        SetObjectPos(g_sHeroTeleported, 40, 117)
        SetObjectPos("Freyda", 26, 117, 0)
        sleep(1)
        tx, ty, tl = GetObjectPos("Freyda")
        MoveCamera(32, ty, tl, 50, 0.99, 0)
        Trigger(PLAYER_REMOVE_HERO_TRIGGER, PLAYER_2, "AI2HeroLostTrigger")
        if GetTownBuildingLevel(g_sTownSummoned, TOWN_BUILDING_GRAIL) == 1 then
            SetGameVar("SarElamTrialGrailBuilt", "true")
        else
            SetGameVar("SarElamTrialGrailBuilt", "false")
            SetObjectFlashlight("Freyda", "light")
            ShowFlyingSign(g_sPath.."FreydaHasLight.txt", "Freyda", -1, 25)
            ChangeHeroStat("Freyda", 2, 150)
            ChangeHeroStat("Freyda", 3, 50)
        end
        sleep(30)
        MoveHeroRealTime("Freyda", 40, 117, 0)
        sleep(10)
        UnblockGame()

    end
end

function CustomAbilityTrigger(heroName, customAbilityID)
    if customAbilityID == CUSTOM_ABILITY_3 then
        local hx, hy, hl = GetObjectPos(heroName)
        if _SameLoc(hx, hy, hl, 29, 117, 0) then
            local options = {}
            g_CallbackParams = {{}}
            for i, townName in RACE2TOWN do
                if GetObjectOwner(townName) == 1 then
                    options[length(options) + 1] = g_sPath.."Name"..townName..".txt"
                    g_CallbackParams[1][length(g_CallbackParams[1]) + 1] = townName
                end
            end
            _PagedTalkBox(
                "/GameMechanics/Spell/Script_Abilities/Custom2/Icon.xdb#xpointer(/Texture)",
                nil,
                "/GameMechanics/Spell/Script_Abilities/Custom3/Desc.txt",
                "/GameMechanics/Spell/Script_Abilities/Custom3/Name.txt",
                "SummonVillageCallback", options)
        else
            MessageBox(g_sPath.."SummonVillageNotInLocation.txt")
        end
    end
end

function GuardianAvatarBonus3Callback()
    local heroName = g_tabCallbackParams[1]
    ChangeHeroStat(heroName, 1, 20)
    ChangeHeroStat(heroName, 2, 20)
    ChangeHeroStat(heroName, 3, 20)
    ChangeHeroStat(heroName, 4, 20)
    g_bBonusAttributes = 1
    ShowFlyingSign(g_sPath.."GuardianAvatarBonus3Flyby.txt", heroName, -1, 8)
end

function GuardianAvatarBonus4Callback()
    BlockGame()
    local heroName = g_tabCallbackParams[1]
    local hx, hy, hl = GetObjectPos(heroName)
    MoveCamera(hx, hy - 1, hl, 20, 0.99, 0)
    sleep(15)
    _TeachSpell(heroName, SPELL_ARCANE_CRYSTAL)
    sleep(2)
    _TeachSpell(heroName, SPELL_BLADE_BARRIER)
    sleep(2)
    Trigger(CUSTOM_ABILITY_TRIGGER, "CustomAbilityTrigger")
    ControlHeroCustomAbility(heroName, CUSTOM_ABILITY_3, CUSTOM_ABILITY_ENABLED)
    ShowFlyingSign(g_sPath.."GuardianAvatarBonus4TeachSpell1.txt", heroName, -1, 8)
    sleep(20)
    MoveCamera(29, 117, 0, 20, 0.99, 0)
    sleep(2)
    SetObjectPos(heroName, 29, 117, 0)
    SetObjectiveState("FinalSendOff", OBJECTIVE_COMPLETED)
    SetObjectiveState("SummonVillage", OBJECTIVE_ACTIVE)
    sleep(20)
    g_sHeroTeleported = heroName
    UnblockGame()
end

function GuardianAvatarBonusCallback(cNum)
    if cNum == 1 then
        if g_bCreaturesReset == 1 then
            MessageBox(g_sPath.."GuardianAvatarBonus1Done.txt")
        else
            QuestionBox(g_sPath.."GuardianAvatarBonus1Confirm.txt", "GuardianAvatarBonus1Callback", "")
        end
    elseif cNum == 2 then
        if g_bAncientHeroHired == 1 then
            MessageBox(g_sPath.."GuardianAvatarBonus2Done.txt")
            return
        end
        if length(GetPlayerHeroes(1)) >= 8 then
            MessageBox(g_sPath.."GuardianAvatarBonus2Refused.txt")
            return
        else
            MessageBox(g_sPath.."GuardianAvatarBonus2Description.txt")
        end
        local options = {}
        for i = 1, length(SPIRIT2TEXTS) do
            options[i] = SPIRIT2TEXTS[i]
        end
        _PagedTalkBox(
            PORT_ACADEMY,
            g_sPath.."DescriptionGuardianAvatar.txt",
            g_sPath.."GuardianAvatarBonus2Spec.txt",
            g_sPath.."NameGuardianAvatar.txt",
            "GuardianAvatarBonus2Callback1", options)
    elseif cNum == 3 then
        if g_bBonusAttributes == 1 then
            MessageBox(g_sPath.."GuardianAvatarBonus3Done.txt")
        else
            QuestionBox(g_sPath.."GuardianAvatarBonus3Confirm.txt", "GuardianAvatarBonus3Callback", "")
        end
    elseif cNum == 4 then
        if g_sHeroTeleported ~= "" then
            MessageBox(g_sPath.."GuardianAvatarAfterSendOff.txt")
        else
            QuestionBox(g_sPath.."GuardianAvatarBonus4Confirm.txt", "GuardianAvatarBonus4Callback", "")
        end
    end
end

function NPCVisitsTrigger(heroName, npcName)
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
                            _TeachSpell(heroName, SPELL_BERSERK)
                            _TeachSpell(heroName, SPELL_BLIND)
                            _TeachSpell(heroName, SPELL_HYPNOTIZE)
                        elseif mob == "Titans" then
                            _TeachSpell(heroName, SPELL_SUMMON_ELEMENTALS)
                            _TeachSpell(heroName, SPELL_CONJURE_PHOENIX)
                            _TeachSpell(heroName, SPELL_SUMMON_HIVE)
                        elseif mob == "Magmas" then
                            _TeachSpell(heroName, SPELL_VAMPIRISM)
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
                _TeachSpell(heroName, SPELL_PHANTOM)
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
            g_tabCallbackParams = {heroName, _GetHeroInfo(heroName)}
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
        elseif objState == OBJECTIVE_COMPLETED then
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
                _ConfiscateCreatures(heroName, CREATURE_POLTERGEIST, polAmt)
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
                RemoveArtefact(heroName, ARTIFACT_FREIDA)
                RemoveArtefact(heroName, ARTIFACT_PRINCESS)
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
            g_sPath.."WindBellKLOption3.txt",
            g_sPath.."WindBellKLOption4.txt")

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
                _TeachSpell(heroName, SPELL_ARMAGEDDON)
                _TeachSpell(heroName, SPELL_UNHOLY_WORD)
                _TeachSpell(heroName, SPELL_HOLY_WORD)
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
            if g_bDwellingsRazed < 32 then
                MessageBox({g_sPath.."NamelessDragonKnightDwellingNotEnough.txt"; n_dwelling = g_bDwellingsRazed})
            else
                MessageBox(g_sPath.."NamelessDragonKnightDwellingEnough.txt")
            end
            if g_bPanickyInfernoRazed == 1 then
                MessageBox(g_sPath.."NamelessDragonKnightTownDone.txt")
            else
                MessageBox(g_sPath.."NamelessDragonKnightTownNotDone.txt")
            end
            if g_bDwellingsRazed == 32 and g_bPanickyInfernoRazed == 1 then
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
            if heroName == g_sAlienQuestHero then
                if IsHeroAlive("ufo") then
                    MessageBox(g_sPath.."NPCWaiting.txt")
                else
                    MessageBox(g_sPath.."ThirdBroFinished2.txt")
                    GiveArtefact(heroName, ARTIFACT_RING_OF_CELERITY)
                    GiveArtefact(heroName, ARTIFACT_RING_OF_CELERITY)
                    SetObjectEnabled("AlienPortal", nil)
                    SetDisabledObjectMode("AlienPortal", DISABLED_BLOCKED)
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
                    SetObjectiveVisible("FindBeginnerWand", nil)
                    MessageBox(g_sPath.."SecondBroWandDone.txt")
                    _TeachSpell(heroName, SPELL_ANTI_MAGIC)
                    _TeachSpell(heroName, SPELL_RESURRECT)
                else
                    MessageBox(g_sPath.."SecondBroWandNotDone.txt")
                end
            end

            if obj2State == OBJECTIVE_ACTIVE then
                if HasArtefact(heroName, ARTIFACT_SKULL_OF_MARKAL) then
                    SetObjectiveState("FindMarkalSkull", OBJECTIVE_COMPLETED)
                    SetObjectiveVisible("FindMarkalSkull", nil)
                    MessageBox(g_sPath.."SecondBroSkullDone.txt")
                    _TeachSpell(heroName, SPELL_IMPLOSION)
                    _TeachSpell(heroName, SPELL_DEEP_FREEZE)
                else
                    MessageBox(g_sPath.."SecondBroSkullNotDone.txt")
                end
            end

            if obj1State > OBJECTIVE_ACTIVE and obj2State > OBJECTIVE_ACTIVE then
                MessageBox(g_sPath.."SecondBroFinish.txt")
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
                    GiveArtefact(heroName, ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING)
                    GiveArtefact(heroName, ARTIFACT_DWARVEN_SMITHY_HUMMER)
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

    elseif npcName == "MegaGodzilla" then
        SetObjectRotation("MegaGodzilla", 0)
        local objState = GetObjectiveState("ArkathPuzzle")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."ArkathPuzzleDescription2.txt")
            SetObjectiveState("ArkathPuzzle", OBJECTIVE_ACTIVE)
            g_tabCallbackParams = {heroName}
            QuestionBox({g_sPath.."SarFamilyAskReady.txt"; sarname = g_sPath.."NameArkath.txt"}, "MegaGodzillaConfirmCallback", "")
        elseif objState == OBJECTIVE_ACTIVE then
            g_tabCallbackParams = {heroName}
            QuestionBox({g_sPath.."SarFamilyAskReady.txt"; sarname = g_sPath.."NameArkath.txt"}, "MegaGodzillaConfirmCallback", "")
        elseif objState == OBJECTIVE_FAILED then
            MessageBox(g_sPath.."MegaGodzillaFail.txt")
        end
        SetObjectRotation("MegaGodzilla", 180)

    elseif npcName == "BeastBreeder" then
        local objState = GetObjectiveState("BreedWolves")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."BreedWolvesDescription2.txt")
            g_tabCallbackParams = {heroName}
            QuestionBox(g_sPath.."NPCConfirm.txt", "BeastBreederCallback", "")
        elseif objState == OBJECTIVE_ACTIVE then
            local wolvesAmount = GetObjectCreatures(heroName, CREATURE_WOLF)
            if wolvesAmount < 500 then
                MessageBox({g_sPath.."BeastBreederNotEnough.txt"; n_limit = 500, n_actual = wolvesAmount})
            else
                MessageBox(g_sPath.."BeastBreederEnough.txt")
                GiveArtefact(heroName, ARTIFACT_PLATE_MAIL_OF_STABILITY)
                BlockGame()
                _ConfiscateCreatures(heroName, CREATURE_WOLF, 500)
                UnblockGame()
                SetObjectiveState("BreedWolves", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("BreedWolves", nil)
            end
        elseif objState == OBJECTIVE_COMPLETED then
            MessageBox(g_sPath.."BeastBreederFinished.txt")
        end

    elseif npcName == "GuardianAvatar" then
        local objState = GetObjectiveState("CompleteSarElamTrial")
        g_tabCallbackParams = {heroName}
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."CompleteSarElamTrialDescription.txt")
            MessageBox(g_sPath.."CompleteSarElamTrialDescription2.txt")
            SetObjectiveState("CompleteSarElamTrial", OBJECTIVE_ACTIVE)
            Trigger(OBJECT_TOUCH_TRIGGER, "DragonGuardianPortal", nil)
            sleep(1)
            Trigger(OBJECT_TOUCH_TRIGGER, "DragonGuardianPortal", "BuildingTouchTrigger")
            SetDisabledObjectMode("DragonGuardianPortal", DISABLED_INTERACT)
            startThread(GuardianMonitoringThread)
        elseif objState == OBJECTIVE_ACTIVE then
            local options = {}
            for i, guardian in GUARDIAN2NAME do
                options[length(options) + 1] = g_sPath.."Name"..guardian..".txt"
            end
            _PagedTalkBox(
                PORT_ACADEMY,
                g_sPath.."DescriptionGuardianAvatar.txt",
                g_sPath.."GuardianAvatarChooseInfo.txt",
                g_sPath.."NameGuardianAvatar.txt",
                "GuardianAvatarInfoCallback", options)
        elseif objState == OBJECTIVE_COMPLETED then
            objState = GetObjectiveState("FinalSendOff")
            if objState <= OBJECTIVE_ACTIVE then
                local options = {}
                for i = 1, 4 do options[i] = g_sPath.."GuardianAvatarBonus"..i..".txt" end
                _PagedTalkBox(
                    PORT_ACADEMY,
                    g_sPath.."DescriptionGuardianAvatar.txt",
                    g_sPath.."GuardianAvatarBonus.txt",
                    g_sPath.."NameGuardianAvatar.txt",
                    "GuardianAvatarBonusCallback", options)
            else
                MessageBox(g_sPath..".txt")
            end
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

function RuneProdigyMonitoringThread()
    sleep(10)
    while true do
        if _CheckAllRunes("RuneProdigy") == 0 then
            SetObjectiveState("RuneProdigyQuest", OBJECTIVE_COMPLETED)
            SetObjectiveVisible("RuneProdigyQuest", nil)
            local rx, ry, rl = GetObjectPos("RuneProdigy")
            BlockGame()
            MoveCamera(rx, ry - 2, rl, 20, 0.6, 0)
            sleep(20)
            UnblockGame()
            MessageBox(g_sPath.."RuneProdigyFarewell.txt")
            break
        else
            sleep(10)
        end
    end
end

function TrainingBankCallback(cNum)
    if cNum > 0 then
        local heroName, slot = g_tabCallbackParams[1], g_tabCallbackParams[2][cNum]
        if GetPlayerResource(1, GOLD) < slot[4] then
            MessageBox({g_sPath.."TrainingBankNotEnoughGold.txt"; n_actual = slot[4], n_limit = GetPlayerResource(1, GOLD)})
        elseif g_iTrainingQuota < slot[2] then
            MessageBox({g_sPath.."TrainingBankNotEnoughQuota.txt"; n_actual = g_iTrainingQuota, n_limit = slot[2]})
        else
            BlockGame()
            ShowFlyingSign({g_sPath.."TrainingBankFlyby.txt"; n_amount = slot[2], c_prev = CREATURE_TEXTS[slot[1]], c_after = CREATURE_TEXTS[slot[3]]},
                           heroName, -1, 8)
            _ConfiscateCreatures(heroName, slot[1], slot[2])
            sleep(1)
            AddHeroCreatures(heroName, slot[3], slot[2])
            sleep(1)
            UnblockGame()
            ShowFlyingSign({g_sPath.."TrainingBankFlyby2.txt"; n_gold = slot[4]}, heroName, -1, 8)
            SetPlayerResource(1, GOLD, GetPlayerResource(1, GOLD) - slot[4])
            g_iTrainingQuota = g_iTrainingQuota - slot[2]
        end
    end
end

function DarkEnergyBankCallback(cNum)
    if cNum > 0 then
        local heroName, slot = g_tabCallbackParams[1], g_tabCallbackParams[2][cNum]
        if g_iDarkEnergy < slot[3] then
            MessageBox({g_sPath.."DarkEnegyBankNotEnough.txt"; n_actual = g_iDarkEnergy, n_limit = slot[3]})
        else
            BlockGame()
            ShowFlyingSign({g_sPath.."DarkEnergyBankFlyby.txt"; n_amount = slot[2], c_creature = CREATURE_TEXTS[slot[1]]},
                           heroName, -1, 8)
            AddHeroCreatures(heroName, slot[1], slot[2])
            sleep(2)
            UnblockGame()
            g_iDarkEnergy = g_iDarkEnergy - slot[3]
        end
    end
end

function DragonGuardianPortalConfirmCallback()
    local heroName, hx, hy = g_tabCallbackParams[1], GUARDIAN2PORTAL[g_tabCallbackParams[2]][1], GUARDIAN2PORTAL[g_tabCallbackParams[2]][2]
    SetObjectPos(heroName, hx, hy, 0)
end

function DragonGuardianPortalCallback(cNum)
    if cNum > 0 and cNum <= length(GUARDIAN2NAME) then
        local heroName = g_tabCallbackParams[1]
        local heroInfo = _GetHeroInfo(heroName)
        QuestionBox({g_sPath.."GuardianAvatarChoosePortalConfirm.txt";
                     h_prof = heroInfo[2],
                     h_name = heroInfo[3],
                     h_level = heroInfo[1],
                     g_name = g_sPath.."Name"..GUARDIAN2NAME[cNum]..".txt"},
                     "DragonGuardianPortalConfirmCallback", "")
        g_tabCallbackParams = {heroName, cNum}
    end
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

    elseif buildingName == "PrisonGottai" then
        BlockGame()
        sleep(2)
        UnblockGame()
        if GetObjectiveState("GetRidOfGottai") < OBJECTIVE_ACTIVE and IsObjectExists("Gottai") then
            MessageBox(g_sPath.."GetRidOfGottaiDescription.txt")
            MessageBox(g_sPath.."GetRidOfGottaiDescription2.txt")
            BlockGame()
            RemoveObject("KhenghiPlaceholder")
            SetObjectiveState("GetRidOfGottai", OBJECTIVE_ACTIVE)
            MoveCamera(57, 27, 0, 20, 0.99, 0)
            sleep(15)
            CreateMonster("Khenghi", CREATURE_GOBLIN_DEFILER, 1, 55, 27, 0)
            sleep(1)
            SetObjectEnabled("Khenghi", nil)
            SetObjectRotation("Khenghi", 180)
            SetMonsterNames("Khenghi", MONSTER_NAME_SINGLE, g_sPath.."NameKhenghi.txt")
            Trigger(OBJECT_TOUCH_TRIGGER, "Khenghi", "NonHostileMonsterTrigger")
            PlayObjectAnimation("Khenghi", "specability", ONESHOT)
            sleep(10)
            MessageBox(g_sPath.."KhenghiGreeting.txt")
            UnblockGame()
            Trigger(OBJECT_TOUCH_TRIGGER, "PrisonGottai", nil)
        end

    elseif buildingName == "PrisonRuneProdigy" then
        BlockGame()
        sleep(2)
        UnblockGame()
        if GetObjectiveState("RuneProdigyQuest") < OBJECTIVE_ACTIVE and IsObjectExists("RuneProdigy") then
            SetObjectPos("RuneOfFlameBattleRage", 59, 30, 0)
            MessageBox(g_sPath.."RuneProdigyQuestDescription.txt")
            MessageBox(g_sPath.."RuneProdigyQuestDescription2.txt")
            SetObjectiveState("RuneProdigyQuest", OBJECTIVE_ACTIVE)
            Trigger(OBJECT_TOUCH_TRIGGER, "PrisonRuneProdigy", nil)
            startThread(RuneProdigyMonitoringThread)
        end

    elseif buildingName == "PrisonRolf" then
        BlockGame()
        sleep(2)
        UnblockGame()
        if IsObjectExists("Rolf") then
            MessageBox(g_sPath.."RolfGreeting.txt")
            Trigger(OBJECT_TOUCH_TRIGGER, "PrisonRolf", nil)
        end

    elseif buildingName == "WarCryShrine1" or buildingName == "WarCryShrine2" then
        if RACE2PROF[_GetHeroRace(heroName)] == "Barbarian" then
            if GetHeroLevel(heroName) < 11 then
                MessageBox({g_sPath.."WarCryShrineTooLowLevel.txt"; n_limit = 11, n_actual = GetHeroLevel(heroName)})
            else
                if buildingName == "WarCryShrine1" then
                    if not g_setWarCried1[heroName] then
                        TeachHeroSpell(heroName, SPELL_WARCRY_SHOUT_OF_MANY)
                        g_setWarCried1[heroName] = true
                        ShowFlyingSign({g_sPath.."WarCryShrineLearnt.txt"; wc_name = "Text/Game/Spells/Hero_Special_Abilities/Warcry_ShoutOfMany/Name.txt"},
                                        heroName, -1, 8)
                    else
                        ShowFlyingSign(g_sPath.."WarCryShrineVisited.txt", heroName, -1, 8)
                    end
                elseif buildingName == "WarCryShrine2" then
                    if not g_setWarCried2[heroName] then
                        TeachHeroSpell(heroName, SPELL_WARCRY_BATTLECRY)
                        g_setWarCried2[heroName] = true
                        ShowFlyingSign({g_sPath.."WarCryShrineLearnt.txt"; wc_name = "Text/Game/Spells/Hero_Special_Abilities/Warcry_BattleCry/Name.txt"},
                                        heroName, -1, 8)
                    else
                        ShowFlyingSign(g_sPath.."WarCryShrineVisited.txt", heroName, -1, 8)
                    end
                end
            end
        else
            MessageBox(g_sPath.."WarCryShrineNotBarbarian.txt")
        end

    elseif buildingName == "TrainingBank" then
        local discount = 100
        local discountHero = {["Isabell"] = true, ["Nicolai"] = true, ["Saint Isabell"] = true}
        local slots = _GetCreatureSlots(heroName)
        local mastery = GetHeroSkillMastery(heroName, SKILL_TRAINING)
        local options = {}
        g_tabCallbackParams[2] = {}
        if mastery == 1 then
            dicount = discount - 0
        elseif mastery == 2 then
            discount = discount - 15
        elseif mastery == 3 then
            discount = discount - 30
        elseif mastery == 4 then
            discount = discount - 45
        else
            MessageBox(g_sPath.."TrainingBankRefused.txt")
            return
        end
        if HasHeroSkill(heroName, PERK_EXPERT_TRAINER) then
            discount = discount - 35
        end
        if discountHero[heroName] then
            discout = discount - floor((GetHeroLevel(heroName) - 1) / 3) - 1
        end
        for i, slot in slots do
            if TRAINING_MAPPING[slot[1]] then
                local trainedID = TRAINING_MAPPING[slot[1]]
                local gold = intg(RECRUIT_COST[trainedID] * slot[2] * discount / 100)
                options[length(options) + 1] = {g_sPath.."TrainingBankOption.txt"; n_amount = slot[2], n_gold = gold, c_prev = CREATURE_TEXTS[slot[1]], c_after = CREATURE_TEXTS[trainedID]}
                g_tabCallbackParams[2][length(g_tabCallbackParams[2]) + 1] = {slot[1] ,slot[2], trainedID, gold}
            end
        end
        if length(options) > 0 then
            local maintext = {g_sPath.."TrainingBankDescription.txt"; n_quota = g_iTrainingQuota, n_discount = 100 - discount}
            g_tabCallbackParams[1] = heroName
            _PagedTalkBox(
                PORT_TRAINING, g_sPath.."DescriptionTrainingBank.txt",
                maintext, g_sPath.."NameTrainingBank.txt", 
                "TrainingBankCallback", options)
        else
            MessageBox(g_sPath.."TrainingBankRefused2.txt")
        end

    elseif buildingName == "DarkEnergyBank" then
        if RACE2PROF[_GetHeroRace(heroName)] == "Necromancer" then
            local options = {}
            local discount = 100
            local amount = _GetCreatureCount(heroName)
            if HasArtefact(heroName, ARTIFACT_NECROMANCER_PENDANT, 1) then
                discount = discount - 10
                if HasArtefact(heroName, ARTIFACT_STAFF_OF_VEXINGS, 1) and HasArtefact(heroName, ARTIFACT_CLOAK_OF_MOURNING, 1)
                   and HasArtefact(heroName, ARTIFACT_RING_OF_DEATH, 1) then
                    discount = discount - 25
                end
            end
            g_tabCallbackParams = {heroName, {}}
            for i, de in DE_COST do
                local unitCost = round(de[2] * discount / 100)
                options[length(options) + 1] = {g_sPath.."DarkEnergyBankOption.txt"; n_de = amount * unitCost, n_creature = amount, c_creature = CREATURE_TEXTS[de[1]]}
                g_tabCallbackParams[2][length(g_tabCallbackParams[2]) + 1] = {de[1], amount, amount * unitCost}
            end
            local maintext = {g_sPath.."DarkEnergyBankDescription.txt"; n_de = g_iDarkEnergy, n_discount = 100 - discount}
            _PagedTalkBox(
                PORT_DE, g_sPath.."DescriptionDarkEnergyBank.txt",
                maintext, g_sPath.."NameDarkEnergyBank.txt",
                "DarkEnergyBankCallback", options)
        else
            MessageBox(g_sPath.."DarkEnergyBankRefused.txt")
        end
    elseif buildingName == "DragonGuardianPortal" then
        local options = {}
        g_tabCallbackParams = {heroName}
        for i, guardian in GUARDIAN2NAME do
            options[length(options) + 1] = g_sPath.."Name"..guardian..".txt"
        end
        _PagedTalkBox(
            PORT_DIMEN,
            "/Text/Game/Buildings/Monoliths/OneWayEntrance-Description.txt",
            g_sPath.."GuardianAvatarChoosePortal.txt",
            "/Text/Game/Buildings/Monoliths/OneWayEntrance-Name.txt",
            "DragonGuardianPortalCallback", options)
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
end

function AnnoyingDevilConfirmCallback()
    local heroName = g_tabCallbackParams[1]
    if GetHeroLevel(heroName) > 10 then
        MessageBox({g_sPath.."MegaGodzillaHeroWrong.txt"; n_limit = 10, n_actual = GetHeroLevel(heroName)})
        return
    end
    g_tabCallbackParams[2] = _GetCreatureSlots(heroName)
    BlockGame()
    _SetCreatureSlots(heroName, DEVIL_SLOTS)
    ChangeHeroStat(heroName, 8, -INFINITY)
    sleep(1)
    UnblockGame()
    StartCombat(heroName, nil, 4,
                CREATURE_BALOR, 20, CREATURE_BALOR, 20, CREATURE_BALOR, 20, CREATURE_BALOR, 20,
                nil, "AnnoyingDevilCombatCallback", NOOB2_ARENA)
end

function AnnoyingDevilCombatCallback(heroName, isWin)
    if isWin then
        SetObjectRotation("AnnoyingDevil", 0)
        MessageBox(g_sPath.."AnnoyingDevilSuccess.txt")
        RemoveObject("AnnoyingDevil")
        BlockGame()
        _SetCreatureSlots(heroName, g_tabCallbackParams[2])
        UnblockGame()
        SetObjectiveState("GetRidOfDevil", OBJECTIVE_COMPLETED)
        SetObjectiveVisible("GetRidOfDevil", nil)
    else
        SetObjectiveState("GetRidOfDevil", OBJECTIVE_FAILED)
        MessageBox(g_sPath.."AnnoyingDevilFail.txt")
    end
end

function VictimAngelCallback()
    BlockGame()
    local ax, ay, al = GetObjectPos("VictimAngel")
    local heroName = 
    MoveCamera(ax, ay - 2, al, 20, 0.80, 0)
    sleep(15)
    PlayObjectAnimation("VictimAngel", "specability", ONESHOT)
    _TeachSpell(g_tabCallbackParams[1], SPELL_REGENERATION)
    sleep(15)
    PlayObjectAnimation("VictimAngel", "happy", ONESHOT)
    sleep(15)
    Trigger(OBJECT_TOUCH_TRIGGER, "VictimAngel", nil)
    RemoveObject("VictimAngel")
    UnblockGame()
end

function GottaiAngryCallback()
    BlockGame()
    SetObjectOwner("Gottai", 8)
    _SetCreatureSlots("Gottai", GOTTAI_SLOTS)
    local hx, hy, hl = GetObjectPos(g_tabCallbackParams[1])
    MoveHeroRealTime("Gottai", hx, hy, hl)
    UnblockGame()
    SetObjectiveState("GetRidOfGottai", OBJECTIVE_COMPLETED)
    SetObjectiveVisible("GetRidOfGottai", nil)
    UnblockGame()
end

function ArrogantElfConfirmCallback()
    local heroName = g_tabCallbackParams[2]
    local whichElf = g_tabCallbackParams[1]
    if GetHeroLevel(heroName) > 5 then
        MessageBox({g_sPath.."MegaGodzillaHeroWrong.txt"; n_limit = 5, n_actual = GetHeroLevel(heroName)})
        return
    end
    g_tabCallbackParams[3] = _GetCreatureSlots(heroName)
    BlockGame()
    _SetCreatureSlots(heroName, ELF_SLOTS)
    _ConfiscateWarMachines(heroName)
    ChangeHeroStat(heroName, 8, -INFINITY)
    sleep(1)
    if whichElf == 2 then ChangeHeroStat(heroName, 8, 3) end
    sleep(1)
    UnblockGame()
    if whichElf ==  1 then
        StartCombat(heroName, nil, 2,
                    CREATURE_SHARP_SHOOTER, 60, CREATURE_PEASANT, 1,
                    nil, "ArrogantElfCombatCallback", SAND_ARENA)
    else
        StartCombat(heroName, nil, 1,
                    CREATURE_SHARP_SHOOTER, 100,
                    nil, "ArrogantElfCombatCallback", SAND_ARENA)
    end
end

function ArrogantElfCombatCallback(heroName, isWin)
    local whichElf = g_tabCallbackParams[1]
    if isWin then
        if GetObjectCreatures(heroName, CREATURE_LONGBOWMAN) >= 50 then
            SetObjectiveState("TeachElfLesson"..whichElf, OBJECTIVE_COMPLETED)
            SetObjectiveVisible("TeachElfLesson"..whichElf, nil)
            MessageBox(g_sPath.."ArrogantElf"..whichElf.."Success.txt")
            RemoveObject("ArrogantElf"..whichElf)
        else
            SetObjectiveState("TeachElfLesson"..whichElf, OBJECTIVE_FAILED)
            MessageBox(g_sPath.."ArrogantElfFailReason.txt")
            MessageBox(g_sPath.."ArrogantElf"..whichElf.."Fail.txt")
        end
        BlockGame()
        _SetCreatureSlots(heroName, g_tabCallbackParams[3])
        if whichElf == 1 then CreateArtifact("", ARTIFACT_UNICORN_HORN_BOW, 70, 35, 0) end
        if whichElf == 2 then CreateArtifact("", ARTIFACT_TREEBORN_QUIVER, 70, 33, 0) end
        UnblockGame()
    else
        SetObjectiveState("TeachElfLesson"..whichElf, OBJECTIVE_FAILED)
        MessageBox(g_sPath.."ArrogantElf"..whichElf.."Fail.txt")
    end
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

    elseif monsterName == "Khenghi" then
        local cyclops = {CREATURE_CYCLOP, CREATURE_CYCLOP_UNTAMED, CREATURE_CYCLOP_BLOODEYED}
        local theCyclop = nil
        for i, aCyclop in cyclops do
            if GetObjectCreatures(heroName, aCyclop) > 0 then
                theCyclop = aCyclop
                break
            end
        end
        if theCyclop and heroName ~= "Gottai" then
            BlockGame()
            Trigger(OBJECT_TOUCH_TRIGGER, "Khenghi", nil)
            local khx, khy, khl = GetObjectPos("Khenghi")
            SetObjectOwner(heroName, 8)
            SetObjectPos(heroName, 49, 28, 1)
            sleep(1)
            MoveCamera(khx, khy - 1, khl, 20, 0.90, 0)
            CreateMonster("DummyCyclop", theCyclop, 1, khx + 2, khy + 2, 0)
            sleep(1)
            SetObjectPos("DummyCyclop", khx + 1, khy + 1, 0)
            SetObjectRotation("DummyCyclop", -45)
            sleep(15)
            PlayObjectAnimation("DummyCyclop", "specability", ONESHOT)
            sleep(5)
            Play3DSound("/Sounds/_(Sound)/Creatures/Orcs/T1c/death.xdb#xpointer(/Sound)", khx, khy, khl)
            RemoveObject("Khenghi")
            sleep(10)
            PlayObjectAnimation("DummyCyclop", "happy", ONESHOT)
            sleep(15)
            RemoveObject("DummyCyclop")
            sleep(1)
            SetObjectPos(heroName, khx + 1, khy, 0)
            SetObjectOwner(heroName, 1)
            sleep(5)
            local hx, hy, hl = GetObjectPos(heroName)
            g_tabCallbackParams = {heroName}
            SetObjectPos("Gottai", hx - 1, hy, hl)
            Play2DSound("/DialogScenes/A2C2/M5/S3/C2M5_S3_Gotai_01sound.xdb#xpointer(/Sound)")
            sleep(20)
            UnblockGame()
            MessageBox(g_sPath.."GottaiAngry.txt", "GottaiAngryCallback")
        else
            MessageBox(g_sPath.."KhenghiTalk.txt")
        end

    elseif monsterName == "AnnoyingDevil" then
        SetObjectRotation("AnnoyingDevil", 0)
        local objState = GetObjectiveState("GetRidOfDevil")
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."GetRidOfDevilDescription2.txt")
            SetObjectiveState("GetRidOfDevil", OBJECTIVE_ACTIVE)
            g_tabCallbackParams = {heroName}
            QuestionBox({g_sPath.."SarFamilyAskReady.txt"; sarname = g_sPath.."NameAnnoyingDevil.txt"}, "AnnoyingDevilConfirmCallback", "")
        elseif objState == OBJECTIVE_ACTIVE then
            g_tabCallbackParams = {heroName}
            QuestionBox({g_sPath.."SarFamilyAskReady.txt"; sarname = g_sPath.."NameAnnoyingDevil.txt"}, "AnnoyingDevilConfirmCallback", "")
        elseif objState == OBJECTIVE_FAILED then
            MessageBox(g_sPath.."AnnoyingDevilFail.txt")
        end
        SetObjectRotation("AnnoyingDevil", 180)

    elseif monsterName == "VictimAngel" then
        SetObjectRotation("VictimAngel", 0)
        g_tabCallbackParams = {heroName}
        MessageBox(g_sPath.."VictimAngelThanks.txt", "VictimAngelCallback")

    elseif monsterName == "ArrogantElf1" or monsterName == "ArrogantElf2" then
        local whichElf = 1
        if monsterName == "ArrogantElf2" then whichElf = 2 end
        local objState = GetObjectiveState("TeachElfLesson"..whichElf)
        if objState < OBJECTIVE_ACTIVE then
            MessageBox(g_sPath.."TeachElfLesson"..whichElf.."Description2.txt")
            SetObjectiveState("TeachElfLesson"..whichElf, OBJECTIVE_ACTIVE)
            g_tabCallbackParams = {whichElf, heroName}
            QuestionBox({g_sPath.."SarFamilyAskReady.txt"; sarname = g_sPath.."NameArrogantElf"..whichElf..".txt"}, "ArrogantElfConfirmCallback", "")
        elseif objState == OBJECTIVE_ACTIVE then
            g_tabCallbackParams = {whichElf, heroName}
            QuestionBox({g_sPath.."SarFamilyAskReady.txt"; sarname = g_sPath.."NameArrogantElf"..whichElf..".txt"}, "ArrogantElfConfirmCallback", "")
        elseif objState == OBJECTIVE_FAILED then
            MessageBox(g_sPath.."ArrogantElf"..whichElf.."Fail.txt")
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
                Trigger(HERO_LEVELUP_TRIGGER, "Berein", nil)
                SetObjectiveState("RecruiteWraiths", OBJECTIVE_COMPLETED)
                SetObjectiveVisible("RecruiteWraiths", nil)
            end
            sleep(10)
        else
            break
        end
    end
end

function RecruiteWraithsCallback()
    Trigger(REGION_ENTER_AND_STOP_TRIGGER, "MarkalRegion", nil)
    SetObjectiveState("RecruiteWraiths", OBJECTIVE_ACTIVE)
    SetObjectEnabled("Berein", true)
    SetObjectOwner("Berein", 1)
    sleep(1)
    Trigger(HERO_LEVELUP_TRIGGER, "Berein", "MarkalLevelUpTrigger")
    startThread(RecruiteWraithsThread)
end

function WinRegionCallback()
    BlockGame()
    RemoveObject("LaszloHero")
    MoveCamera(18, 115, 0, 20, 0.99, 0)
    SetObjectPos(g_sHeroTeleported, 19, 117)
    SetObjectRotation(g_sHeroTeleported, -90)
    sleep(20)
    PlayObjectAnimation("LaszloPuppet", "buff", ONESHOT)
    sleep(15)
    PlayVisualEffect(
        "/Effects/_(Effect)/Spells/Bless.xdb#xpointer(/Effect)",
        g_sHeroTeleported, "", 0, 0, 2)
    sleep(10)
    PlayObjectAnimation("LaszloPuppet", "happy", ONESHOT)
    sleep(20)
    PlayVisualEffect(
        "/Effects/_(Effect)/Spells/Teleport_Start.xdb#xpointer(/Effect)",
        "LaszloPuppet", "", 0, 0, 2)
    Play2DSound("/Sounds/_(Sound)/Spells/bless.xdb#xpointer(/Sound)")
    sleep(2)
    SetObjectiveState("RescueLaszlo", OBJECTIVE_COMPLETED)
    RemoveObject("LaszloPuppet")
    sleep(1)
    SetObjectRotation(g_sHeroTeleported, 90)
    SetObjectPos(g_sHeroTeleported, 17, 117, 0)
    for i = 1, 6 do
        PlayObjectAnimation("AliveFootman"..i, "happy", IDLE)
    end
    sleep(10)
    PlayVisualEffect(
        "/Effects/_(Effect)/Spells/Prayer.xdb#xpointer(/Effect)",
        g_sHeroTeleported, 0, 0, 2)
    Play2DSound("/Sounds/_(Sound)/Spells/Prayer.xdb#xpointer(/Sound)")
    sleep(2)
    SetObjectFlashlight(g_sHeroTeleported, "final")
    sleep(30)
    UnblockGame()
    Win()
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
            if objState < OBJECTIVE_ACTIVE then
                MessageBox(g_sPath.."ScareAwayVeyerDescription2.txt")
                SetObjectiveState("ScareAwayVeyer", OBJECTIVE_ACTIVE)
            end
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
    elseif regionName == "WinRegion" then
        MessageBox(g_sPath.."ScenarioWin2.txt", "WinRegionCallback")
    else
        print("Error in RegionEnterTrigger, ", heroName, "\t", regionName)
    end
end

function NewDayTrigger()
    -- Clear all player owned dwellings
    for i = 0, 7 do
        for j = 1, 7 do
            SetObjectDwellingCreatures(RACE2TOWN[i], CREATURE_IDS_BY_RACE[i][j], 0)
        end
    end

    if IsObjectExists("Rolf") and GetObjectOwner("Rolf") ==  1 then
        local rx, ry, rl = GetObjectPos("Rolf")
        BlockGame()
        MoveCamera(rx, ry - 2, rl, 20, 0.6, 0)
        sleep(20)
        UnblockGame()
        MessageBox(g_sPath.."RolfFarewell.txt")
        RemoveObject("Rolf")
    end

    if IsObjectExists("RuneProdigy") and GetObjectiveState("RuneProdigyQuest") == OBJECTIVE_COMPLETED then
        local rx, ry, rl = GetObjectPos("RuneProdigy")
        BlockGame()
        MoveCamera(rx, ry - 2, rl, 20, 0.6, 0)
        sleep(20)
        SetObjectOwner("RuneProdigy", 8)
        sleep(2)
        SetObjectPos("RuneProdigy", HERO_DUMP_POS[1], HERO_DUMP_POS[2], 1)
        sleep(7)
        for i = ARTIFACT_DWARVEN_MITHRAL_CUIRASS, ARTIFACT_DWARVEN_MITHRAL_SHIELD do 
            CreateArtifact("", i, rx, ry, rl)
        end
        RemoveObject("RuneProdigy")
        sleep(10)
        UnblockGame()
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

function ScenarioLostCallback()
    BlockGame()
    MoveCamera(19, 117, 0, 18, 0.9, 3.1416/2)
    sleep(20)
    for i = 1, 7 do
        local decider = random(2)
        local ani = "attack00"
        if decider == 0 then ani = "attack01" end
        PlayObjectAnimation("Surround"..i, ani, ONESHOT)
    end
    for i = 1, 6 do
        PlayObjectAnimation("Cheer"..i, "happy", ONESHOT)
    end
    sleep(2)
    for i = 1, 6 do
        PlayVisualEffect(
            "/Effects/_(Effect)/Spells/DivineVengeance/FX_DivineVengeance.(Effect).xdb#xpointer(/Effect)",
            "AliveFootman"..i)
    end
    sleep(1)
    for i = 1, 6 do
        PlayObjectAnimation("AliveFootman"..i, "death", ONESHOT_STILL)
    end
    sleep(10)
    PlayObjectAnimation("LaszloPuppet", "defeat01", ONESHOT_STILL)
    sleep(30)
    UnblockGame()
    SetObjectiveState("RescueLaszlo", OBJECTIVE_FAILED)
end

function PlayerHeroLostTrigger(heroName)
    if heroName == g_sHeroTeleported then
        g_bRandomAnimDone = 1
        MessageBox(g_sPath.."ScenarioLost.txt", "ScenarioLostCallback")
    else
        BlockGame()
        SetupDragonGuardianThread()
        UnblockGame()
    end
end

function AI2HeroLostTrigger(heroName)
    if heroName == "Freyda" then
        BlockGame()
        g_bRandomAnimDone = 1
        MoveCamera(17, 117, 0, 40, 0.99, -3.1416/2)
        sleep(20)
        for i = 1, 6 do
            PlayObjectAnimation("AliveFootman"..i, "happy", ONESHOT)
        end
        for i = 1, 7 do
            PlayVisualEffect("/Effects/_(Effect)/Characters/UnsummonCreature.xdb#xpointer(/Effect)", "Surround"..i)
            PlayObjectAnimation("Surround"..i, "death", ONESHOT_STILL)
        end
        for i = 1, 6 do
            PlayVisualEffect("/Effects/_(Effect)/Characters/UnsummonCreature.xdb#xpointer(/Effect)", "Cheer"..i)
            PlayObjectAnimation("Cheer"..i, "death", ONESHOT_STILL)
        end
        sleep(10)
        for i = 1, 7 do RemoveObject("Surround"..i) end
        for i = 1, 6 do RemoveObject("Cheer"..i) end
        sleep(10)
        UnblockGame()
        MessageBox(g_sPath.."ScenarioWin1.txt")
        Trigger(PLAYER_REMOVE_HERO_TRIGGER, PLAYER_2, nil)
        Trigger(REGION_ENTER_AND_STOP_TRIGGER, "WinRegion", "RegionEnterTrigger")
    end
end

function BlockingAuraTrigger(heroName, objName)
    MessageBox(g_sPath.."DescriptionBlockAura.txt")
end

function AliveFootmanThread()
    while g_bRandomAnimDone == 0 do
        local decider = random(4)
        local ani = "stir00"
        if decider == 0 then ani = "attack00"
        elseif decider == 1 then ani = "attack01"
        elseif decider == 2 then ani = "specability"
        end
        decider = random(4)
        local ani2 = "call"
        if decider == 0 then ani2 = "capture"
        elseif decider == 1 then ani2 = "stir00"
        elseif decider == 2 then ani2 = "happy"
        end
        for i = 1, 6 do
            PlayObjectAnimation("AliveFootman"..i, ani, ONESHOT)
        end
        PlayObjectAnimation("LaszloPuppet", ani2, ONESHOT)
        sleep(40)
    end
end

function SurroundThread()
    while g_bRandomAnimDone == 0 do
        for i = 1, 7 do
            local decider = random(3)
            local delay = 1 + random(3)
            ani = "idle00"
            if decider == 0 then ani = "attack00"
            elseif decider == 1 then ani = "attack01"
            elseif decider == 2 then ani = "happy"
            end
            sleep(delay)
            PlayObjectAnimation("Surround"..i, ani, ONESHOT)
        end
        sleep(40 + random(15))
    end
end

function CheerThread()
    while g_bRandomAnimDone == 0 do
        for i = 1, 6 do
            PlayObjectAnimation("Cheer"..i, "happy", ONESHOT)
        end
        sleep(80 + random(20))
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
    --for i = 1, 6 do SetMonsterSelectionType("AliveFootman"..i, 0) end

    for i = 1, 7 do SetObjectEnabled("Surround"..i, nil) end
    sleep(1)
    --for i = 1, 7 do SetMonsterSelectionType("Surround"..i, 0) end

    for i = 1, 6 do SetObjectEnabled("Cheer"..i, nil) end
    sleep(1)
    --for i = 1, 6 do SetMonsterSelectionType("Cheer"..i, 0) end

    SetObjectEnabled("TinYUnicorn", nil)
    SetDisabledObjectMode("TinYUnicorn", DISABLED_INTERACT)
    SetObjectEnabled("TinYNightmare", nil)
    SetDisabledObjectMode("TinYNightmare", DISABLED_INTERACT)
    sleep(1)
    SetMonsterSelectionType("TinYUnicorn", 0)
    SetMonsterSelectionType("TinYNightmare", 0)

    startThread(AliveFootmanThread)
    startThread(SurroundThread)
    startThread(CheerThread)
    UnblockGame()

    local cx, cy, cl = 17, 117, 0
    --MoveCamera(17, 117, 0, 40, 0.99, -3.1416/2)
end

function SetupTables()
    NAME2RACE = _InvertTable(RACE2NAME)
    GARRISON2RACE = _InvertTable(RACE2GARRISON)
    SAR2INDEX = _InvertTable(INDEX2SAR)
    NAME2GUARDIAN = _InvertTable(GUARDIAN2NAME)
end

function NormalizeStartRace()
    -- Clean up all creature dwellings
    -- Disown all towns that is not the starting race

    SetPlayerTeam(1, 1)
    SetPlayerTeam(5, 1)
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

function SetupDragonGuardianThread()
    for i, guardian in GUARDIAN2NAME do
        if GetGameVar("SarElamTrial"..guardian.."Fought") == "true" and IsObjectExists(guardian) then
            print("setup ", guardian)
            _SetCreatureSlots(guardian, GUARDIAN2ARMY[i])
            SetHeroLootable(guardian, nil)
            EnableHeroAI(guardian, nil)
            if guardian == "DarkGuardian" or guardian == "AirGuardian" or guardian == "WaterGuardian" then
                local morale = GetHeroStat(guardian, STAT_MORALE)
                ChangeHeroStat(guardian, STAT_MORALE, 10 - morale)
            end
            if guardian == "AirGuardian" or guardian == "WaterGuardian" or guardian == "ChaosGuardian" then
                local luck = GetHeroStat(guardian, STAT_LUCK)
                ChangeHeroStat(guardian, STAT_LUCK, 10 - luck)
            end
            SetGameVar("SarElamTrial"..guardian.."Fought", "false")
        end
    end
end

function SetupQuestObjects()
    for i, guardian in GUARDIAN2NAME do
        SetGameVar("SarElamTrial"..guardian.."Fought", "true")
    end

    startThread(SetupDragonGuardianThread)
    Trigger(PLAYER_REMOVE_HERO_TRIGGER, 1, "PlayerHeroLostTrigger")

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
    EnableHeroAI("ufo", nil)
    SetObjectOwner("Berein", 8)
    SetObjectEnabled("Berein", nil)
    EnableHeroAI("Wulfstan", nil)
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

    -- Setup Region triggers
    Trigger(REGION_ENTER_AND_STOP_TRIGGER, "VeyerRegion", "RegionEnterTrigger")
    Trigger(REGION_ENTER_AND_STOP_TRIGGER, "WulfstanRegion", "RegionEnterTrigger")
    Trigger(REGION_ENTER_AND_STOP_TRIGGER, "MarkalRegion", "RegionEnterTrigger")

    -- Setup Building Visit trigger
    SetObjectEnabled("EnlightenedWitch", nil)
    Trigger(OBJECT_TOUCH_TRIGGER, "EnlightenedWitch", "BuildingTouchTrigger")
    Trigger(OBJECT_TOUCH_TRIGGER, "PrisonGottai", "BuildingTouchTrigger")
    Trigger(OBJECT_TOUCH_TRIGGER, "PrisonRuneProdigy", "BuildingTouchTrigger")
    Trigger(OBJECT_TOUCH_TRIGGER, "PrisonRolf", "BuildingTouchTrigger")
    SetObjectEnabled("WarCryShrine1", nil)
    SetObjectEnabled("WarCryShrine2", nil)
    Trigger(OBJECT_TOUCH_TRIGGER, "WarCryShrine1", "BuildingTouchTrigger")
    Trigger(OBJECT_TOUCH_TRIGGER, "WarCryShrine2", "BuildingTouchTrigger")
    SetObjectEnabled("TrainingBank", nil)
    SetObjectEnabled("DarkEnergyBank", nil)
    Trigger(OBJECT_TOUCH_TRIGGER, "TrainingBank", "BuildingTouchTrigger")
    Trigger(OBJECT_TOUCH_TRIGGER, "DarkEnergyBank", "BuildingTouchTrigger")

    -- Setup Monster Triggers
    SetObjectEnabled("UndyingPeasant", nil)
    Trigger(OBJECT_TOUCH_TRIGGER, "UndyingPeasant", "NonHostileMonsterTrigger")
    SetObjectEnabled("TestGolems", nil)
    Trigger(OBJECT_TOUCH_TRIGGER, "TestGolems", "NonHostileMonsterTrigger")
    SetObjectEnabled("ArrogantElf1", nil)
    Trigger(OBJECT_TOUCH_TRIGGER, "ArrogantElf1", "NonHostileMonsterTrigger")
    SetObjectEnabled("ArrogantElf2", nil)
    Trigger(OBJECT_TOUCH_TRIGGER, "ArrogantElf2", "NonHostileMonsterTrigger")
    SetObjectEnabled("VictimAngel", nil)
    Trigger(OBJECT_TOUCH_TRIGGER, "VictimAngel", "NonHostileMonsterTrigger")
    SetObjectEnabled("AnnoyingDevil", nil)
    Trigger(OBJECT_TOUCH_TRIGGER, "AnnoyingDevil", "NonHostileMonsterTrigger")

    -- Setup Storage crystals trigger
    for i = 1, 10 do
        SetObjectEnabled("StorageCrystal"..i, nil)
        Trigger(OBJECT_TOUCH_TRIGGER, "StorageCrystal"..i, "StorageCrystalVisitTrigger")
        SetObjectPos("StorageCrystal"..i, CRYSTAL_DUMP_POS[1], CRYSTAL_DUMP_POS[2], 1)
    end

    SetRegionBlocked("BlockAI1", true, PLAYER_2)

    -- Setup portals
    local portalNames = {"ValeriaPortal", "AlienPortal", "InfernoPortal", "DragonGuardianPortal"}
    for i, portalName in portalNames do
        SetObjectEnabled(portalName, nil)
        Trigger(OBJECT_TOUCH_TRIGGER, portalName, "PortalDenyTrigger")
    end

    -- Make NPC non-lootable
    SetHeroLootable("RedHeavenHero03", nil)
    SetHeroLootable("Wulfstan", nil)

    -- Setup Spirit Heros
    for i, spec in SPIRIT2HEROES do
        for j, prof in RACE2PROF do
            SetObjectOwner(spec..prof, 8)
        end
    end

    -- Setup blocing auras
    for i = 1, 18 do
        SetObjectEnabled("BlockingAura"..i, nil)
        Trigger(OBJECT_TOUCH_TRIGGER, "BlockingAura"..i, "BlockingAuraTrigger")
    end

    -- Setup auto-raze town
    DisableAutoEnterTown("PanickyInferno", true)
    DisableAutoEnterTown("ValeriasHaven", true)

    SetObjectEnabled("FreydaGarrison", nil)
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

function DancingGoblin()
    if IsObjectExists("Khenghi") then
        PlayObjectAnimation("Khenghi", "specability", ONESHOT)
    end
end

function OpeningScene()
    BlockGame()
    MoveCamera(18, 115, 0, 40, 0.99, 0)
    sleep(13)
    OpenCircleFog(25, 117, 0, 30, 1)
    sleep(7)
    UnblockGame()
    MessageBox(g_sPath.."ScenarioStart.txt")
    SetObjectiveState("RescueLaszlo", OBJECTIVE_ACTIVE)
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
        if siegeCycle >= 1 then
            DancingGoblin()
            siegeCycle = 0
        end
        -- Animation end

        sleep(10)
    end
end

-- Map start from here
SetupTables()
NormalizeStartRace()
OpenCircleFog(37, 31, 0, 30, 1)
OpenCircleFog(54, 31, 0, 30, 1)
SetupScene()
SetObjectiveState("StartupObjective", OBJECTIVE_ACTIVE)
SetupQuestObjects()
OpeningScene()
startThread(backgroundThread)
