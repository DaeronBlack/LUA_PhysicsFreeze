 function FGod( ply, dmginfo )
                if(ply:GetNWInt("FGod") == 1) then
                                dmginfo:ScaleDamage( 0 )
                end
end
hook.Add("EntityTakeDamage", "FGod", FGod)
 
hook.Add( "PhysgunPickup", function(pl, ent)
		if(ent:IsPlayer()) then
			ent:SwitchWeapon("keys")
		else 
			return false
end)
 
function playerDies( pl, weapon, killer )
        if(pl._physgunned) then
                return false
        else
                return true
        end
end
hook.Add( "CanPlayerSuicide", "playerNoDeath", playerDies ) 

function GM:PhysgunPickup(pl, ent)
	if(ent:IsPlayer())then
		print("Entity is player!")
		ent:SelectWeapon("keys")
	else
		print("Entity is not player!")
		return false
end