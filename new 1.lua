function PlayerPickup( pl, ent )
	if ( ent == pl ) ) then
		print( "Entity is player!" )
		RunConsoleCommand( "use", "keys" )
	else
		print( "Entity is not player!" )
		return false
	end
end
hook.Add( "PhysgunPickup", "Switch to Keys", PlayerPickup )
