import os
import shutil
TEMPLATE = "templates"

MAP1  = ("Knight", "Ranger", "Wizard" ,"Warlock", "Necromancer", "DemonLord", "Runemage", "Barbarian")
MAP2  = ("/_(Model)/Heroes/Knight_LOD.(Model).xdb#xpointer(/Model)",
        "/Characters/Heroes/Ranger_LOD.xdb#xpointer(/Model)",
        "/Characters/Heroes/Wizard_LOD.xdb#xpointer(/Model)",
        "/_(Model)/Heroes/DemonLord_LOD.(Model).xdb#xpointer(/Model)",
        "/_(Model)/Heroes/Knight_LOD.(Model).xdb#xpointer(/Model)",
        "/_(Model)/Heroes/DemonLord_LOD.(Model).xdb#xpointer(/Model)",
        "/Characters/Heroes/RuneMage_LOD.xdb#xpointer(/Model)",
        "/Characters/Heroes/H5A2/OrcWarrior_Hero.xdb#xpointer(/Model)")
MAP3  = ("/_(AnimSet)/Heroes/Knight_LOD-adv.(AnimSet).xdb#xpointer(/AnimSet)",
        "/Characters/Heroes/Ranger_LOD-adv.xdb#xpointer(/AnimSet)",
        "/Characters/Heroes/Wizard_LOD-adv.xdb#xpointer(/AnimSet)",
        "/_(AnimSet)/Heroes/DemonLord_LOD-adv.(AnimSet).xdb#xpointer(/AnimSet)",
        "/_(AnimSet)/Heroes/Knight_LOD-adv.(AnimSet).xdb#xpointer(/AnimSet)",
        "/_(AnimSet)/Heroes/DemonLord-adv.(AnimSet).xdb#xpointer(/AnimSet)",
        "/Characters/Heroes/RuneMage_LOD-adv.xdb#xpointer(/AnimSet)",
        "/Characters/Heroes/H5A2/OrcWarrior_Hero-arena.xdb#xpointer(/AnimSet)")
MAP4  = ("HERO_SKILL_TRAINING",
         "HERO_SKILL_AVENGER",
         "HERO_SKILL_ARTIFICIER",
         "HERO_SKILL_INVOCATION",
         "HERO_SKILL_NECROMANCY",
         "HERO_SKILL_GATING",
         "HERO_SKILL_RUNELORE",
         "HERO_SKILL_DEMONIC_RAGE")
MAP5  = ("/GameMechanics/RefTables/GhostMode/face_Revenant.(Texture).xdb#xpointer(/Texture)",
         "/GameMechanics/RefTables/GhostMode/face_Shade.(Texture.xdb#xpointer(/Texture)",
         "/GameMechanics/RefTables/GhostMode/face_Phantasm.(Texture).xdb#xpointer(/Texture)",
         "/GameMechanics/RefTables/GhostMode/face_Banshee.(Texture).xdb#xpointer(/Texture)",
         "/GameMechanics/RefTables/GhostMode/face_Spectre.(Texture).xdb#xpointer(/Texture)",
         "/GameMechanics/RefTables/GhostMode/face_Chimera.(Texture).xdb#xpointer(/Texture)",
         "/GameMechanics/RefTables/GhostMode/face_StoneSpirit.(Texture).xdb#xpointer(/Texture)",
         "/GameMechanics/RefTables/GhostMode/face_Spook.(Texture).xdb#xpointer(/Texture)")
MAP6  = ("/GameMechanics/RefTables/GhostMode/ico_Revenant.(Texture).xdb#xpointer(/Texture)",
         "/GameMechanics/RefTables/GhostMode/ico_Shade.(Texture).xdb#xpointer(/Texture)",
         "/GameMechanics/RefTables/GhostMode/ico_Phantasm.(Texture).xdb#xpointer(/Texture)",
         "/GameMechanics/RefTables/GhostMode/ico_Banshee.(Texture).xdb#xpointer(/Texture)",
         "/GameMechanics/RefTables/GhostMode/ico_Spectre.(Texture).xdb#xpointer(/Texture)",
         "/GameMechanics/RefTables/GhostMode/ico_Chimera.(Texture).xdb#xpointer(/Texture)",
         "/GameMechanics/RefTables/GhostMode/ico_StoneSpirit.(Texture).xdb#xpointer(/Texture)",
         "/GameMechanics/RefTables/GhostMode/ico_Spook.(Texture).xdb#xpointer(/Texture)")
MAP7  = ("/Characters/Heroes/Knight.(Character).xdb#xpointer(/Character)",
         "/Characters/Heroes/Ranger.(Character).xdb#xpointer(/Character)",
         "/Characters/Heroes/Wizard.(Character).xdb#xpointer(/Character)",
         "/Characters/Heroes/Warlock.(Character).xdb#xpointer(/Character)",
         "/Characters/Heroes/Necromancer.(Character).xdb#xpointer(/Character)",
         "/Characters/Heroes/DemonLord.(Character).xdb#xpointer(/Character)",
         "/Characters/Heroes/RuneMage.(Character).xdb#xpointer(/Character)",
         "/Characters/Heroes/H5A2/OrcWarrior_Hero.(Character).xdb#xpointer(/Character)")
# Haven Dwarves
MAP8  = ("/Characters/Heroes/Knight_LOD.(Character).xdb#xpointer(/Character)",
         "/Characters/Heroes/Ranger_LOD.(Character).xdb#xpointer(/Character)",
         "/Characters/Heroes/Wizard_LOD.(Character).xdb#xpointer(/Character)",
         "/Characters/Heroes/Warlock_LOD.(Character).xdb#xpointer(/Character)",
         "/Characters/Heroes/Necromancer_LOD.(Character).xdb#xpointer(/Character)",
         "/Characters/Heroes/DemonLord_LOD.(Character).xdb#xpointer(/Character)",
         "/Characters/Heroes/RuneMage_LOD.(Character).xdb#xpointer(/Character)",
         "/Characters/Heroes/H5A2/OrcWarrior_Hero.(Character).xdb#xpointer(/Character)")
MAP9  = ("/GameMechanics/CreatureVisual/Heroes/Knight.xdb#xpointer(/CreatureVisual)",
         "/GameMechanics/CreatureVisual/Heroes/Ranger.xdb#xpointer(/CreatureVisual)",
         "/GameMechanics/CreatureVisual/Heroes/Wizard.xdb#xpointer(/CreatureVisual)",
         "/GameMechanics/CreatureVisual/Heroes/Warlock.xdb#xpointer(/CreatureVisual)",
         "/GameMechanics/CreatureVisual/Heroes/Necromancer.xdb#xpointer(/CreatureVisual)",
         "/GameMechanics/CreatureVisual/Heroes/Demon_Lord.xdb#xpointer(/CreatureVisual)",
         "/GameMechanics/CreatureVisual/Heroes/Runemage.xdb#xpointer(/CreatureVisual)",
         "/GameMechanics/CreatureVisual/Heroes/Barbarian.xdb#xpointer(/CreatureVisual)")
MAP10 = ("TOWN_HEAVEN",
         "TOWN_PRESERVE",
         "TOWN_ACADEMY",
         "TOWN_DUNGEON",
         "TOWN_NECROMANCY",
         "TOWN_INFERNO",
         "TOWN_FORTRESS",
         "TOWN_STRONGHOLD")
MAP11 = (1, 0, 0, 1, 0, 2, 0, 3)
MAP12 = (2, 2, 0, 0, 1, 0, 1, 0)
MAP13 = (1, 1, 2, 3, 3, 1, 2, 1)
MAP14 = (1, 2, 3, 1, 1, 2, 2, 1)
MAP15 = ("/_(Model)/Heroes/Knight_Path/Symbol.(Model).xdb#xpointer(/Model)",
        "/_(Model)/Heroes/Ranger_Path/Symbol.xdb#xpointer(/Model)",
        "/_(Model)/Heroes/Wizard_Path/Symbol.xdb#xpointer(/Model)",
        "/_(Model)/Heroes/Warlock_Path/Symbol.xdb#xpointer(/Model)",
        "/_(Model)/Heroes/Necromancer_Path/Symbol.xdb#xpointer(/Model)",
        "/_(Model)/Heroes/DemonLord_Path/Symbol.(Model).xdb#xpointer(/Model)",
        "/_(Model)/Heroes/RuneMage_Path/Symbol.xdb#xpointer(/Model)",
        "/_(Model)/Heroes/Orc_Warrior_Path/Symbol.xdb#xpointer(/Model)")
MAP16 = ("/MapObjects/_(AdvMapHeroTraceSet)/Haven.xdb#xpointer(/AdvMapHeroTraceSet)",
        "/MapObjects/_(AdvMapHeroTraceSet)/Rampart.xdb#xpointer(/AdvMapHeroTraceSet)",
        "/MapObjects/_(AdvMapHeroTraceSet)/Academy.xdb#xpointer(/AdvMapHeroTraceSet)",
        "/MapObjects/_(AdvMapHeroTraceSet)/Dungeon.xdb#xpointer(/AdvMapHeroTraceSet)",
        "/MapObjects/_(AdvMapHeroTraceSet)/Necropolis.xdb#xpointer(/AdvMapHeroTraceSet)",
        "/MapObjects/_(AdvMapHeroTraceSet)/Inferno.xdb#xpointer(/AdvMapHeroTraceSet)",
        "/MapObjects/_(AdvMapHeroTraceSet)/Fortress.(AdvMapHeroTraceSet).xdb#xpointer(/AdvMapHeroTraceSet)",
        "/MapObjects/_(AdvMapHeroTraceSet)/Barbarian.xdb#xpointer(/AdvMapHeroTraceSet)")

def _href(line, new):
    first = line.split("\"")[0]
    second = line.split("\"")[2]
    return first + "\"" + new + "\"" + second

def _value(line, new):
    first = line.split(">")[0]
    second = line.split("</")[1]
    return first + ">" + new + "</" + second

def main():
    for template in os.listdir(TEMPLATE):
        lines = tuple(open(os.path.join(TEMPLATE, template), "r").readlines())
        for i in range(8):
            filename = template.split(".")[0] + MAP1[i] + "." + ".".join(template.split(".")[1:])
            spec = template.split(".")[0]
            with open(filename, "w") as fp:
                fp.write(lines[0]); fp.write(lines[1])
                fp.write(_href(lines[2], MAP2[i]))
                fp.write(_href(lines[3], MAP3[i]))
                for j in range(4, 30):
                    fp.write(lines[j])
                fp.write(_value(lines[30], spec + MAP1[i]))
                if i != 5:
                    fp.write(_value(lines[31], "HERO_CLASS_" + MAP1[i].upper()))
                else:
                    fp.write(_value(lines[31], "HERO_CLASS_DEMON_LORD"))
                fp.write(lines[32]);fp.write(lines[33]);fp.write(lines[34])
                fp.write(_value(lines[35], MAP4[i]))
                fp.write(lines[36]);fp.write(lines[37]);fp.write(lines[38]);fp.write(lines[39])
                fp.write(_href(lines[40], MAP5[i]))
                fp.write(_href(lines[41], MAP6[i]))
                fp.write(_href(lines[42], MAP7[i]))
                if i == 0:
                    fp.write("\t<HeroCharacterArenaMelee href=\"/Characters/Heroes/Knight_strike.(Character).xdb#xpointer(/Character)\"/>\n")
                elif i == 6:
                    fp.write("\t<HeroCharacterArenaMelee href=\"/Characters/Heroes/RuneMageHero_Strike.(Character).xdb#xpointer(/Character)\"/>\n")
                else:
                    fp.write(lines[43])
                fp.write(_href(lines[44], MAP8[i]))
                fp.write(lines[45])
                fp.write(_href(lines[46], MAP9[i]))
                fp.write(_value(lines[47], MAP10[i]))
                fp.write(lines[48])
                fp.write("\t\t<NameFileRef href=\"/Maps/SingleMissions/TrialsOfSarElam/NameForgottenHero.txt\"/>\n")
                fp.write("\t\t<BiographyFileRef href=\"/Maps/SingleMissions/TrialsOfSarElam/DescriptionForgottenHero.txt\"/>\n")
                fp.write(_value(lines[51], str(MAP11[i])))
                fp.write(_value(lines[52], str(MAP12[i])))
                fp.write(_value(lines[53], str(MAP13[i])))
                fp.write(_value(lines[54], str(MAP14[i])))
                for j in range(55, 66):
                    fp.write(lines[j])
                fp.write(_href(lines[66], MAP15[i]))
                fp.write(_href(lines[67], MAP16[i]))
                for j in range(68, 80):
                    fp.write(lines[j])

if __name__ == "__main__":
    main()