AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")
ENT.CleanupPriority = 2

function ENT:Initialize()
    self:SetModel("models/props_combine/combine_light001a.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetCollisionGroup(COLLISION_GROUP_WORLD)
    local phys = self:GetPhysicsObject()
    if phys:IsValid() then
        phys:Wake()
        phys:EnableGravity(true)
        phys:SetMass(10)
    end

    self.Horde_Ammobox = nil
    self.Horde_NextThink = CurTime()
    self.Horde_Owner = self:GetNWEntity("HordeOwner")
    self.Horde_ThinkInterval = 30
    self.Horde_EnableShockwave = nil
    self.Horde_NextShockWave = CurTime()
    self.Horde_ShockwaveInterval = 2
    self.Horde_WatchTower = true

    if self.Horde_Owner:Horde_GetPerk("warden_restock") then
        self.Horde_ThinkInterval = 15
    end
    if self.Horde_Owner:Horde_GetPerk("warden_ex_machina") then
        self:Horde_AddWardenAura()
    end
    if self.Horde_Owner:Horde_GetPerk("warden_rejection_pulse") then
        self.Horde_EnableShockwave = true
    end
end

function ENT:Think()
    if CurTime() >= self.Horde_NextThink + self.Horde_ThinkInterval then
        if self.Horde_Ammobox and self.Horde_Ammobox:IsValid() then
            self.Horde_Ammobox:Remove()
        end
        self.Horde_Ammobox = ents.Create("horde_ammobox")
        self.Horde_Ammobox:SetPos(self:GetPos() - self:GetAngles():Forward() * 30)
        self.Horde_Ammobox:Spawn()
        if SERVER then
            if self.Horde_Owner:IsPlayer() then
                hook.Run("Horde_WardenWatchtower", self.Horde_Owner, self)
            end
        end
        self.Horde_NextThink = CurTime()
    end

    if self.Horde_EnableShockwave then
        if CurTime() >= self.Horde_NextShockWave + self.Horde_ShockwaveInterval then
            local dmg = DamageInfo()
            dmg:SetAttacker(self.Horde_Owner)
            dmg:SetInflictor(self)
            dmg:SetDamageType(DMG_SHOCK)
            dmg:SetDamage(50)
            local e = EffectData()
            e:SetOrigin(self:GetPos())
            util.Effect("explosion_shock", e, true, true)
            util.BlastDamageInfo(dmg, self:GetPos(), 160)
            self.Horde_NextShockWave = CurTime()
        end
    end
end

hook.Add("PlayerUse", "PickUpWatchtower", function(ply, ent)
    if not HORDE:IsWatchTower(ent) then return end
    if not ent:GetNWEntity("HordeOwner"):IsValid() then return end
    if ent:GetNWEntity("HordeOwner") ~= ply then return false end
    if not ent.Horde_WatchtowerPickupCd then
        ent.Horde_WatchtowerPickupCd = CurTime() + 0.5
    else
        if ent.Horde_WatchtowerPickupCd > CurTime() then
            return
        else
            if ent.Horde_WatchtowerPickedUp then
                ply:DropObject(ent)
                ent.Horde_WatchtowerPickupCd = CurTime() + 0.5
                ent.Horde_WatchtowerPickedUp = nil
                return
            end
        end
    end
    if not ply.IsHoldingObject then
        local p = ent:GetPos()
        p.z = ply:GetPos().z + 12
        ent:SetPos(p)
        local a = ply:GetAngles()
        ent:SetAngles(Angle(0, a.y, 0))
        ply:PickupObject(ent)
    end
    ent.Horde_WatchtowerPickedUp = ply
    ent.Horde_WatchtowerPickupCd = CurTime() + 0.5
end )

hook.Add("OnPlayerPhysicsPickup","DetectPickup", function(ply, ent)
    ply.IsHoldingObject = true
end)

hook.Add("OnPlayerPhysicsDrop","Detectdrop", function(ply, ent)
    ply.IsHoldingObject = nil
end)

