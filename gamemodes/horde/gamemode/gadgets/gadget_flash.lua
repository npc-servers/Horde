GADGET.PrintName = "Flash"
GADGET.Description = [[Dashes forward, on your next melee attack dealing a {1} slash damage explosion.
Provides a short invincibility frame.
{2} reduced fall damage taken until you land on the ground.]]
GADGET.Icon = "items/gadgets/flash.png"
GADGET.Duration = 0
GADGET.Cooldown = 10
GADGET.Active = true
GADGET.Params = {
    [1] = { value = 200 },
    [2] = { value = 0.9, percent = true },
}
GADGET.Hooks = {}

GADGET.Hooks.Horde_UseActiveGadget = function( ply )
    if CLIENT then return end
    if ply:Horde_GetGadget() ~= "gadget_flash" then return end

    sound.Play( "weapons/physcannon/energy_sing_explosion2.wav", ply:GetPos() )

    local dir = ply:GetAimVector()
    local vel = dir * 1000
    ply.Horde_NextAttack_Flash = true
    ply.Horde_Invincible = true
    ply.Flash_Fall_Damage_Prevention = true

    timer.Simple( 0, function()
        ply:SetLocalVelocity( vel )
    end )

    timer.Simple( 0.1, function()
        if not ply:IsValid() then return end
        ply.Horde_Invincible = nil
    end )
end

GADGET.Hooks.Horde_OnPlayerDamage = function( ply, npc, bonus, hitgroup, dmginfo )
    if not ply.Horde_NextAttack_Flash then return end
    if dmginfo:IsBulletDamage() then return end
    ply.Horde_NextAttack_Flash = nil

    local dmg = DamageInfo()
    dmg:SetDamage( 200 )
    dmg:SetDamageType( DMG_SLASH )
    dmg:SetAttacker( ply )
    dmg:SetInflictor( ply )
    dmg:SetDamagePosition( ply:WorldSpaceCenter() )
    dmg:SetDamageForce( Vector( 0, 0, 0 ) )

    ply.Horde_Invincible = true
    util.BlastDamageInfo( dmg, ply:WorldSpaceCenter(), 300 )
    ply.Horde_Invincible = nil

    local e = EffectData()
    e:SetNormal( Vector( 0, 0, 1 ) )
    e:SetOrigin( ply:GetPos() )
    e:SetRadius( 250 )
    util.Effect( "seismic_wave", e, true, true )

    util.ScreenShake( ply:GetPos(), 10, 5, 1, 500 )
end

GADGET.Hooks.Horde_OnPlayerDamageTaken = function( ply, dmginfo, bonus )
    if not ply.Horde_Invincible then return end
    dmginfo:SetDamage( 0 )
    return true
end

GADGET.Hooks.Horde_GetFallDamage = function(ply, speed, bonus)
    if ply:Horde_GetGadget() ~= "gadget_flash" then return end
    bonus.less = bonus.less * 0.1
end


