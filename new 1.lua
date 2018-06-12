function GM:PhysgunPickup(pl, ent)
	if(ent:IsPlayer())then
		print("Entity is player!")
		ent:SelectWeapon("keys")
	else
		print("Entity is not player!")
		return false
	end
end
	
