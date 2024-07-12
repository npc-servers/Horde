resource.AddWorkshop( "2401598805" )

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("sh_difficulty.lua")
AddCSLuaFile("sh_particles.lua")
AddCSLuaFile("sh_translate.lua")
AddCSLuaFile("sh_horde.lua")
AddCSLuaFile("sh_gadget.lua")
AddCSLuaFile("sh_status.lua")
AddCSLuaFile("sh_damage.lua")
AddCSLuaFile("sh_infusion.lua")
AddCSLuaFile("sh_item.lua")
AddCSLuaFile("sh_class.lua")
AddCSLuaFile("sh_enemy.lua")
AddCSLuaFile("sh_mutation.lua")
AddCSLuaFile("sh_perk.lua")
AddCSLuaFile("sh_maps.lua")
AddCSLuaFile("sh_custom.lua")
AddCSLuaFile("sh_rank.lua")
AddCSLuaFile("sh_sync.lua")
AddCSLuaFile("sh_misc.lua")
AddCSLuaFile("sh_objective.lua")
AddCSLuaFile("sh_spells.lua")

AddCSLuaFile("cl_economy.lua")
AddCSLuaFile("cl_achievement.lua")
AddCSLuaFile("cl_hitnumbers.lua")
AddCSLuaFile("cl_stencil_rings.lua")
AddCSLuaFile("cl_extras.lua")
AddCSLuaFile("gui/cl_gameinfo.lua")
AddCSLuaFile("gui/cl_status.lua")
AddCSLuaFile("gui/cl_ready.lua")
AddCSLuaFile("gui/cl_class.lua")
AddCSLuaFile("gui/cl_description.lua")
AddCSLuaFile("gui/cl_spelldescription.lua")
AddCSLuaFile("gui/cl_infusion.lua")
AddCSLuaFile("gui/cl_item.lua")
AddCSLuaFile("gui/cl_spellitem.lua")
AddCSLuaFile("gui/cl_itemconfig.lua")
AddCSLuaFile("gui/cl_classconfig.lua")
AddCSLuaFile("gui/cl_enemyconfig.lua")
AddCSLuaFile("gui/cl_mapconfig.lua")
AddCSLuaFile("gui/cl_configmenu.lua")
AddCSLuaFile("gui/cl_shop.lua")
AddCSLuaFile("gui/cl_spellforge.lua")
AddCSLuaFile("gui/cl_stats.lua")
AddCSLuaFile("gui/cl_summary.lua")
AddCSLuaFile("gui/cl_scoreboard.lua")
AddCSLuaFile("gui/cl_3d2d.lua")
AddCSLuaFile("gui/cl_subclassbutton.lua")
AddCSLuaFile("gui/cl_perkbutton.lua")
AddCSLuaFile("gui/cl_leaderboard.lua")

AddCSLuaFile("status/sh_mind.lua")
AddCSLuaFile("gui/scoreboard/dpingmeter.lua")
AddCSLuaFile("gui/scoreboard/dheaderpanel.lua")
AddCSLuaFile("gui/scoreboard/dplayerline.lua")

include("shared.lua")
include("sh_particles.lua")
include("sh_translate.lua")
include("sh_horde.lua")
include("sh_difficulty.lua")
include("sh_gadget.lua")
include("sh_status.lua")
include("sh_damage.lua")
include("sh_infusion.lua")
include("sh_item.lua")
include("sh_class.lua")
include("sh_enemy.lua")
include("sh_mutation.lua")
include("sh_perk.lua")
include("sh_maps.lua")
include("sh_custom.lua")
include("sh_rank.lua")
include("sh_sync.lua")
include("sh_misc.lua")
include("sh_objective.lua")
include("sh_spells.lua")

include("sv_damage.lua")
include("sv_heal.lua")
include("status/sv_barrier.lua")
include("status/sh_mind.lua")
include("status/buff/sv_buff.lua")
include("status/buff/sv_headhunter.lua")
include("status/buff/sv_deadeye.lua")
include("status/buff/sv_camoflague.lua")
include("status/buff/sv_adrenaline.lua")
include("status/buff/sv_endorphins.lua")
include("status/buff/sv_hypertrophy.lua")
include("status/buff/sv_health_regen.lua")
include("status/buff/sv_armor_regen.lua")
include("status/buff/sv_fortify.lua")
include("status/buff/sv_berserk.lua")
include("status/buff/sv_haste.lua")
include("status/buff/sv_phalanx.lua")
include("status/buff/sv_aerial_guard.lua")
include("status/buff/sv_warden_aura.lua")
include("status/buff/sv_reactive_armor.lua")
include("status/buff/sv_tactical_spleen.lua")
include("status/buff/sv_foresight.lua")
include("status/buff/sv_intensity.lua")
include("status/buff/sv_smokescreen.lua")
include("status/buff/sv_neuron_stabilizer.lua")
include("status/buff/sv_solar_flux.lua")
include("status/buff/sv_brutality.lua")
include("status/buff/sv_sandcloak.lua")
include("status/buff/sv_vile_blood.lua")
include("status/buff/sv_flesh_eater.lua")
include("status/buff/sv_sigil.lua")
include("status/debuff/sv_debuff.lua")
include("status/debuff/sv_hinder.lua")
include("status/debuff/sv_weaken.lua")
include("status/debuff/sv_ignite.lua")
include("status/debuff/sv_burst.lua")
include("status/debuff/sv_stun.lua")
include("status/debuff/sv_break.lua")
include("status/debuff/sv_frostbite.lua")
include("status/debuff/sv_shock.lua")
include("status/debuff/sv_bleeding.lua")
include("status/debuff/sv_freeze.lua")
include("status/debuff/sv_hemorrhage.lua")

include("obj_entity_extend_sv.lua")
include("sv_difficulty.lua")
include("sv_perk.lua")
include("sv_economy.lua")
include("sv_commands.lua")
include("sv_playerlifecycle.lua")
include("sv_nodegraph.lua")
include("sv_tip.lua")
include("sv_hooks.lua")
include("sv_misc.lua")
include("sv_hitnumbers.lua")
include("sv_leaderboard.lua")
include("sv_rank.lua")
include("sv_horde.lua")


AddCSLuaFile("arccw/attachments/horde_akimbo_deagle.lua")
AddCSLuaFile("arccw/attachments/horde_akimbo_m9.lua")
AddCSLuaFile("arccw/attachments/horde_akimbo_glock.lua")
AddCSLuaFile("arccw/attachments/horde_ubgl_medic.lua")
AddCSLuaFile("arccw/attachments/horde_ubgl_m203.lua")
AddCSLuaFile("arccw/attachments/horde_ammo_ap.lua")
AddCSLuaFile("arccw/attachments/horde_ammo_sabot.lua")
include("arccw/attachments/horde_akimbo_deagle.lua")
include("arccw/attachments/horde_akimbo_m9.lua")
include("arccw/attachments/horde_akimbo_glock.lua")
include("arccw/attachments/horde_ubgl_medic.lua")
include("arccw/attachments/horde_ubgl_m203.lua")
include("arccw/attachments/horde_ammo_ap.lua")
include("arccw/attachments/horde_ammo_sabot.lua")
include("arccw/attachments/bo1_skorpion_ext_mag.lua")
include("arccw/attachments/bo1_skorpion_stock_folded.lua")
include("arccw/attachments/bo1_skorpion_stock_unfolded.lua")
