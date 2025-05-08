PERK.PrintName = "Abyssal Might"
PERK.Description =
[[+{1} to maximum Spectres alive.
Spectres gain access to Abyssal Roar.]]
PERK.Icon = "materials/perks/necromancer/abyssal_might.png"
PERK.Params = {
    [1] = { value = 1 },
    [2] = { value = 0.25, percent = true },
}
PERK.Hooks = {}

PERK.Hooks.Horde_OnRaiseSpectre = function ( ply, properties )
    if ply:Horde_GetPerk( "necromancer_abyssal_might" ) then
        properties.abyssal_might = true
    end
end

PERK.Hooks.Horde_OnUnsetPerk = function(ply, perk)
    if CLIENT then return end
    if perk == "necromancer_abyssal_might" then
        HORDE:RemoveSpectres(ply)
    end
end