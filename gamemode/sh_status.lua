-- Status Mapping
-- Please use the variable names instead of the values!

HORDE.Status_Camoflague = 0
HORDE.Status_Adrenaline = 1
HORDE.Status_Headhunter = 2
HORDE.Status_Fortify = 3
HORDE.Status_Berserk = 4
HORDE.Status_ArmorRegen = 5
HORDE.Status_HealthRegen = 6
HORDE.Status_Minion = 7
HORDE.Status_Mindeye = 8
HORDE.Status_WardenAura = 9
HORDE.Status_EntropyShield = 10
HORDE.Status_CanBuy = 11

HORDE.Status_Armor_Survivor = 12
HORDE.Status_Armor_Assault = 13
HORDE.Status_Armor_Heavy = 14
HORDE.Status_Armor_Demolition = 15
HORDE.Status_Armor_Ghost = 16
HORDE.Status_Armor_Medic = 17
HORDE.Status_Armor_Engineer = 18
HORDE.Status_Armor_Warden = 19
HORDE.Status_Armor_Cremator = 20
HORDE.Status_Armor_Berserker = 21

HORDE.Status_ExpDisabled = 22
HORDE.Status_Bleeding = 23
HORDE.Status_Ignite = 24
HORDE.Status_Frostbite = 25
HORDE.Status_Shock = 26
HORDE.Status_Break = 27
HORDE.Status_Decay = 28
HORDE.Status_Psychosis = 29

HORDE.Status_Icon = {}
HORDE.Status_Icon[HORDE.Status_Camoflague] = "materials/status/camoflague.png"
HORDE.Status_Icon[HORDE.Status_Adrenaline] = "materials/status/adrenaline.png"
HORDE.Status_Icon[HORDE.Status_Headhunter] = "materials/perks/headhunter.png"
HORDE.Status_Icon[HORDE.Status_Fortify] = "materials/perks/fortify.png"
HORDE.Status_Icon[HORDE.Status_Berserk] = "materials/perks/berserk.png"
HORDE.Status_Icon[HORDE.Status_ArmorRegen] = "materials/status/armorregen.png"
HORDE.Status_Icon[HORDE.Status_HealthRegen] = "materials/status/healthregen.png"
HORDE.Status_Icon[HORDE.Status_Minion] = "materials/status/minion.png"
HORDE.Status_Icon[HORDE.Status_Mindeye] = "materials/perks/mindeye.png"
HORDE.Status_Icon[HORDE.Status_WardenAura] = "materials/warden.png"
HORDE.Status_Icon[HORDE.Status_EntropyShield] = "materials/perks/entropy_shield.png"
HORDE.Status_Icon[HORDE.Status_CanBuy] = "materials/status/canbuy.png"
HORDE.Status_Icon[HORDE.Status_ExpDisabled] = "materials/status/exp_disabled.png"

HORDE.Status_Icon[HORDE.Status_Armor_Survivor] = "items/armor_survivor.png"
HORDE.Status_Icon[HORDE.Status_Armor_Assault] = "items/armor_assault.png"
HORDE.Status_Icon[HORDE.Status_Armor_Heavy] = "items/armor_heavy.png"
HORDE.Status_Icon[HORDE.Status_Armor_Demolition] = "items/armor_demolition.png"
HORDE.Status_Icon[HORDE.Status_Armor_Ghost] = "items/armor_ghost.png"
HORDE.Status_Icon[HORDE.Status_Armor_Medic] = "items/armor_medic.png"
HORDE.Status_Icon[HORDE.Status_Armor_Engineer] = "items/armor_engineer.png"
HORDE.Status_Icon[HORDE.Status_Armor_Warden] = "items/armor_warden.png"
HORDE.Status_Icon[HORDE.Status_Armor_Cremator] = "items/armor_cremator.png"
HORDE.Status_Icon[HORDE.Status_Armor_Berserker] = "items/armor_berserker.png"

HORDE.Status_Icon[HORDE.Status_Bleeding] = "materials/status/bleeding.png"
HORDE.Status_Icon[HORDE.Status_Ignite] = "materials/status/ignite.png"
HORDE.Status_Icon[HORDE.Status_Frostbite] = "materials/status/frostbite.png"
HORDE.Status_Icon[HORDE.Status_Shock] = "materials/status/shock.png"
HORDE.Status_Icon[HORDE.Status_Break] = "materials/status/break.png"
HORDE.Status_Icon[HORDE.Status_Decay] = "materials/status/decay.png"
HORDE.Status_Icon[HORDE.Status_Psychosis] = "materials/status/psychosis.png"

HORDE.Status_Buildup_Sounds = {}
HORDE.Status_Buildup_Sounds[HORDE.Status_Bleeding] = "horde/status/bleeding_buildup.ogg"
--HORDE.Status_Buildup_Sounds[HORDE.Status_Ignite] = "player/general/flesh_burn.wav"
HORDE.Status_Buildup_Sounds[HORDE.Status_Frostbite] = "horde/status/frostbite_buildup.ogg"
HORDE.Status_Buildup_Sounds[HORDE.Status_Shock] = "eapons/stunstick/stunstick_fleshhit2.wav"
HORDE.Status_Buildup_Sounds[HORDE.Status_Break] = "ambient/levels/canals/toxic_slime_sizzle1.wav"

HORDE.Status_Trigger_Sounds = {}
HORDE.Status_Trigger_Sounds[HORDE.Status_Bleeding] = "horde/status/bleeding_trigger.ogg"
--HORDE.Status_Trigger_Sounds[HORDE.Status_Ignite] = "ambient/fire/fire_small1.wav"
HORDE.Status_Trigger_Sounds[HORDE.Status_Frostbite] = "horde/status/frostbite_trigger.ogg"
HORDE.Status_Trigger_Sounds[HORDE.Status_Shock] = "ambient/energy/zap1.wav"
HORDE.Status_Trigger_Sounds[HORDE.Status_Break] = "horde/status/break_trigger.ogg"

function HORDE:IsStatusStackable(status)
    if status == HORDE.Status_Adrenaline or status == HORDE.Status_Headhunter or status == HORDE.Status_Minion or status == HORDE.Status_Mindeye then return true end
    return false
end

function HORDE:IsDebuff(status)
    return status > 22
end