if not ArcCWInstalled then return end
if CLIENT then
    SWEP.WepSelectIcon = surface.GetTextureID("arccw/weaponicons/arccw_go_negev")
    killicon.Add("arccw_horde_negev", "arccw/weaponicons/arccw_go_negev", Color(0, 0, 0, 255))
end
SWEP.Base = "arccw_go_negev"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Horde" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Negev"
SWEP.Slot = 2

SWEP.ViewModel = "models/weapons/arccw_go/v_mach_negev.mdl"
SWEP.WorldModel = "models/weapons/arccw_go/v_mach_negev.mdl"

SWEP.RecoilPunch = 0

SWEP.ShootVol = 75 -- volume of shoot sound
SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.75
SWEP.ShootSpeedMult = 0.75

SWEP.Jamming = false
SWEP.HeatCapacity = false
SWEP.HeatDissipation = false
SWEP.HeatLockout = false
SWEP.HeatDelayTime = false