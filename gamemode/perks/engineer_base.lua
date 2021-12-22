PERK.PrintName = "Engineer Base"
PERK.Description = "The Engineer is a minion-centered class that deals damage through minions.\nComplexity: MEDIUM\n\n{1} increased minion health and damage.\nTurrets have {2} base health and deals {3} base damage."
PERK.Params = {
    [1] = {value = 0.15, percent = true},
    [2] = {value = 400},
    [3] = {value = 15},
}

PERK.Hooks = {}
PERK.Hooks.Horde_OnSetPerk = function(ply, perk)
    if SERVER and perk == "engineer_base" then
    end
end

PERK.Hooks.Horde_OnUnsetPerk = function(ply, perk)
    if SERVER and perk == "engineer_base" then
    end
end

PERK.Hooks.EntityTakeDamage = function (target, dmginfo)
end

PERK.Hooks.Horde_OnPlayerMinionDamage = function (ply, npc, bonus, dmginfo)
    if ply:Horde_GetPerk("engineer_base") then
        local class = dmginfo:GetInflictor():GetClass()
        if  class == "npc_turret_floor" then
            bonus.more = bonus.more * 5
        end
        bonus.increase = bonus.increase + 0.15
    end
end

PERK.Hooks.OnEntityCreated = function (ent)
    if not ent:IsValid() then return end
    if CLIENT then return end
    timer.Simple(0.1, function()
        local ply = ent:GetNWEntity("HordeOwner")
        if ply:IsPlayer() and ply:Horde_GetPerk("engineer_base") and ent:IsNPC() then
            if ent:GetClass() == "npc_turret_floor" then
                if ent:GetMaxHealth() < 400 then
                    if ent.Horde_Is_Mini_Sentry then
                        ent:SetMaxHealth(200)
                    else
                        ent:SetMaxHealth(400)
                    end
                end
            end
            ent:SetMaxHealth(ent:GetMaxHealth() * 1.15)
            ent:SetHealth(ent:GetMaxHealth())
        end
    end)
end