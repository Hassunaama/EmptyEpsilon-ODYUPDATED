-- Name: Jump 08
-- Type: Mission
-- Type: Mission

function init()

      odysseus = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Corvette C743")
	odysseus:setCallSign("ESS Odysseus"):setPosition(0, 0):setCanBeDestroyed(false)
	
-- Launched buttons
	odysseus:addCustomButton("Relay", "Launch ESSODY18", "Launch ESSODY18", launch_essody18)
	odysseus:addCustomButton("Relay", "Launch ESSODY23", "Launch ESSODY23", launch_essody23)
	odysseus:addCustomButton("Relay", "Launch ESSODY36", "Launch ESSODY36", launch_essody36)


	for asteroid_counter=1,50 do
		Asteroid():setPosition(random(-75000, 75000), random(-75000, 75000))
	end

	x, y = odysseus:getPosition()
	
-- EOC Starfleet		
	aurora = CpuShip():setFaction("EOC Starfleet"):setTemplate("Battlecruiser B952"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):setRotation(-75):setScannedByFaction("Corporate owned"):setCallSign("ESS Aurora"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)
	
	
	taurus = CpuShip():setFaction("EOC Starfleet"):setTemplate("Corvette C754"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -1500, 250):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("CSS Taurus") :setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 

	valkyrie = CpuShip():setFaction("EOC Starfleet"):setTemplate("Corvette C754"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -3000, 500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Valkyrie"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	aries = CpuShip():setFaction("EOC Starfleet"):setTemplate("Scoutship S342"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -4500, 750):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Aries"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 

	inferno = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cruiser C753"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -6000, 1000):setScannedByFaction("Corporate owned"):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Inferno"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)
		
	harbringer = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cruiser C753"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -9000, 7000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Harbinger"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	envoy = CpuShip():setFaction("EOC Starfleet"):setTemplate("Corvette C754"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -250, 1500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Envoy"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)
	
	bluecoat = CpuShip():setFaction("EOC Starfleet"):setTemplate("Corvette C754"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -500, 3000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Bluecoat"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 
	
	burro = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cargoship T842"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -750, 4500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("OSS Burro"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)
	
	arthas = CpuShip():setFaction("EOC Starfleet"):setTemplate("Scoutship S342"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -1000, 6000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Arthas"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 

	valor = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cruiser C753"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -4000, 9000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Valor"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 

	warrior = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cruiser C753"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -1500, 8500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Warrior"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 
	

	halo = CpuShip():setFaction("EOC Starfleet"):setTemplate("Battlecruiser B952"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -7000, 9000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Halo"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 
	
-- Civilians
	prophet = CpuShip():setFaction("Faith of the High Science"):setTemplate("Scoutship S835"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -1000, 1000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("CSS Prophet"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 
	
	karma = CpuShip():setFaction("Unregistered"):setTemplate("Scoutship S835"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -2000, 2000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("OSS Karma"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 
	
	marauder = CpuShip():setFaction("Corporate owned"):setTemplate("Scoutship S835"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -3000, 3000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("OSS Marauder"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 
	
	discovery = CpuShip():setFaction("Government owned"):setTemplate("Corvette C348"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -4000, 4000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Discovery"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 
	
	whirlwind = CpuShip():setFaction("Corporate owned"):setTemplate("Corvette C348"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -5000, 5000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("CSS Whirlwind"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 
	
	memory = CpuShip():setFaction("Government owned"):setTemplate("Corvette C348"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -6000, 6000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Memory"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 
	
	cyclone = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -3000, 4000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("CSS Cyclone"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 
	
	ravenger = CpuShip():setFaction("Corporate owned"):setTemplate("Corvette C348"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -7000, 6000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("OSS Ravager"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 
	
	spectrum = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -6000, 7000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Spectrum"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 
	
	centurion = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -7000, 4000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("CSS Centurion"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 
	
	polaris = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -4000, 7000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Polaris"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(true) 
		
	immortal = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -5500, 3500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("OSS Immortal"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 
	
	starfall = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(-50000, 50000), y + random(-50000, 50000)):orderFlyFormation(aurora, -3500, 5500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("OSS Starfall"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false) 


	 addGMFunction("EOC orders", eoc_orders)
	

	
	
    
  

	addGMFunction("Fighter launchers", fighter_launchers)

	addGMFunction("Destroy ESS Polaris", function ()
	x, y = polaris:getPosition()
	
	ExplosionEffect():setPosition(x,y):setSize(200)
	polaris:destroy();
		removeGMFunction("Destroy ESS Polaris")
	end)
	
	
	addGMFunction("Enemy north", wave_north)
	addGMFunction("Enemy east", wave_east)
	addGMFunction("Enemy south", wave_south)
	addGMFunction("Enemy west", wave_west)

	addGMFunction("Starcaller Fixed", launch_starcaller_button)
	addGMFunction("Change scenario", changeScenarioPrep)

end

function changeScenarioPrep()

	removeGMFunction("Change scenario")
	addGMFunction("Cancel change", changeScenarioCancel)
	addGMFunction("Confirm change", changeScenario)
	
end

function changeScenarioCancel()
	removeGMFunction("Confirm change")
		removeGMFunction("Cancel change")
	addGMFunction("Change scenario", changeScenarioPrep)

end

function changeScenario()

	setScenario("scenario_jump_09.lua", "Null")
	
end


function eoc_orders()

	x, y = odysseus:getPosition()
	
-- Fleet to battle

x, y = odysseus:getPosition()

aurora:orderRoaming(x + random(-20000, 25000), y + random(-60000,-25000))
taurus:orderRoaming(x + random(-20000, 25000), y + random(-60000,-25000))
valkyrie:orderRoaming(x + random(-20000, 25000), y + random(-60000,-25000))
aries:orderRoaming(x + random(-20000, 25000), y + random(-60000,-25000))
inferno:orderRoaming(x + random(-20000, 25000), y + random(-60000,-25000))
hardbringer:orderRoaming(x + random(-20000, 25000), y + random(-60000,-25000))
envoy:orderRoaming(x + random(-20000, 25000), y + random(-60000,-25000))
bluecoat:orderRoaming(x + random(-20000, 25000), y + random(-60000,-25000))
burro:orderRoaming(x + random(-20000, 25000), y + random(-60000,-25000))
arthas:orderRoaming(x + random(-20000, 25000), y + random(-60000,-25000))
valor:orderRoaming(x + random(-20000, 25000), y + random(-60000,-25000))
warrior:orderRoaming(x + random(-20000, 25000), y + random(-60000,-25000))
halo:orderRoaming(x + random(-20000, 25000), y + random(-60000,-25000))

-- Civilians to safety
	prophet:orderFlyTowardsBlind(x + 45000, y + 40000)
	karma:orderFlyTowardsBlind(x + 40000, y + 35000)
	marauder:orderFlyTowardsBlind(x + 45000, y + 41000)
	discovery:orderFlyTowardsBlind(x + 40000, y + 38000)
	whirlwind:orderFlyTowardsBlind(x + 45000, y + 35000)
	memory:orderFlyTowardsBlind(x + 40000, y + 42000)
	cyclone:orderFlyTowardsBlind(x + 43000, y + 40000)

	ravenger:orderFlyTowardsBlind(x + -45000, y + 30000)
	spectrum:orderFlyTowardsBlind(x + -40000, y + 30000)
	polaris:orderFlyTowardsBlind(x + -45000, y + 35000)
	immortal:orderFlyTowardsBlind(x + -39000, y + 31000)
	starfall:orderFlyTowardsBlind(x + -40000, y + 30000)
	

end


function wave_north()
	
		x, y = odysseus:getPosition()
		
	-- Fighters 10
	-- Cruisers 5
		for n=1,10 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(-50000, 50000), y + random(-70000,-60000)):orderRoaming(x, y)
        end

		for n=1,5 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(-50000, 50000), y + random(-70000, -60000)):orderRoaming(x, y)
        end
		
	end


	
function wave_east()
	
		x, y = odysseus:getPosition()
		
	-- Fighters 10
	-- Cruisers 5
		for n=1,10 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(60000, 70000), y + random(-50000, 50000)):orderRoaming(x, y)
        end

		for n=1,5 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(60000, 70000), y + random(-50000, 50000)):orderRoaming(x, y)
        end
		
	end
	
	function wave_south()
	
		x, y = odysseus:getPosition()
		
	-- Fighters 10
	-- Cruisers 5
		
		
				for n=1,10 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(-50000, 50000), y + random(60000,70000)):orderRoaming(x, y)
        end

		for n=1,5 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(-50000, 50000), y + random(60000,70000)):orderRoaming(x, y)
        end

		
	end
	
		function wave_west()
	
		x, y = odysseus:getPosition()
		
	-- Fighters 10
	-- Cruisers 5
		for n=1,10 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(-70000, -60000), y + random(-50000, 50000)):orderRoaming(x, y)
        end

		for n=1,5 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(-70000, -60000), y + random(-50000, 50000)):orderRoaming(x, y)
        end		
	end
	
	
	




	function fighter_launchers()
		addGMFunction("Aurora Fighters", function()
		
		 x, y = aurora:getPosition()

			for n=1,69 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Aurora Fighters")
		end)
		
		addGMFunction("Halo Fighters", function()
		
		x, y = halo:getPosition()
		
			for n=1,51 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Halo Fighters")
		end)
		
		addGMFunction("Taurus Fighters", function()
		
		x, y = taurus:getPosition()
		
			for n=1,10 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Taurus Fighters")
		end)
		
		addGMFunction("Envoy Fighters", function()
		
		x, y = envoy:getPosition()
		
			for n=1,4 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Envoy Fighters")
		end)

		addGMFunction("Valkyrie Fighters", function()
		
		x, y = valkyrie:getPosition()
		
			for n=1,9 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Valkyrie Fighters")
		end)
		
		addGMFunction("Harbringer Fighters", function()
		
		x, y = harbringer:getPosition()
		
			for n=1,16 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Harbringer Fighters")
		end)

		addGMFunction("Inferno Fighters", function()
		
		x, y = inferno:getPosition()
		
			for n=1,27 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Inferno Fighters")
		end)
		
		addGMFunction("Valor Fighters", function()
		
		x, y = valor:getPosition()
		
			for n=1,20 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Valor Fighters")
		end)

		addGMFunction("Warrior Fighters", function()
		
		x, y = warrior:getPosition()
		
			for n=1,18 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Warrior Fighters")
		end)

		addGMFunction("Hide Fighter launchers", function()
			removeGMFunction("Aurora Fighters")
			removeGMFunction("Halo Fighters")
			removeGMFunction("Taurus Fighters")
			removeGMFunction("Envoy Fighters")
			removeGMFunction("Valkyrie Fighters")
			removeGMFunction("Harbringer Fighters")
			removeGMFunction("Inferno Fighters")
			removeGMFunction("Valor Fighters")
			removeGMFunction("Warrior Fighters")
			removeGMFunction("Hide Fighter launchers")
			addGMFunction("Fighter launchers", fighter_launchers)
		end)

		
	removeGMFunction("Fighter launchers")
	end



function launch_starcaller_button()
	addGMFunction("Cancel Starcaller", launch_starcaller_button_cancel)
	addGMFunction("Confirm Starcaller", launch_starcaller_button_confirm)
	removeGMFunction("Starcaller Fixed")
end

function launch_starcaller_button_cancel()
	removeGMFunction("Cancel Starcaller")
	removeGMFunction("Confirm Starcaller")
	addGMFunction("Starcaller Fixed", launch_starcaller_button)
end

function launch_starcaller_button_confirm()
	removeGMFunction("Cancel Starcaller")
	removeGMFunction("Confirm Starcaller")
	odysseus:addCustomButton("Relay", "Launch Starcaller", "Launch Starcaller", launch_starcaller)
end

-- Player launched functions for fighters and starcaller
function launch_starcaller()

x, y = odysseus:getPosition()


	starcaller = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Scoutship S392"):setPosition(x, y + 400)
	starcaller:setCallSign("ESS Starcaller"):setAutoCoolant(true)
	
	odysseus:removeCustom("Launch Starcaller")
	
	starcaller:addCustomButton("Helms", "Dock to Odysseus", "Dock to Odysseus", dock_starcaller)

end

function dock_starcaller()
	x, y = starcaller:getPosition()
	
	dockable = false
	
	for _, obj in ipairs(getObjectsInRadius(x, y, 500)) do

		callSign = obj:getCallSign()

		if callSign == "ESS Odysseus" then
			dockable = true
		end
		
	end

	if dockable == true then
		starcaller:destroy()			
		odysseus:addCustomButton("Relay", "Launch Starcaller", "Launch Starcaller", launch_starcaller)
	else
		starcaller:addCustomMessage("Helms", "Distance too far. Docking cancelled.", "Distance too far. Docking cancelled.")
	end
end	


function launch_essody18()

	x, y = odysseus:getPosition()

	odyfig18 = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Fighter F967"):setPosition(x, y + 300)
	odyfig18:setCallSign("ESSODY18"):setAutoCoolant(true)
	
	odysseus:removeCustom("Launch ESSODY18")
	
	odyfig18:addCustomButton("Helms", "Dock to Odysseys", "Dock to Odysseys", dock_essody18)

end	

function dock_essody18()

	x, y = odyfig18:getPosition()
	
	dockable = false
	
	for _, obj in ipairs(getObjectsInRadius(x, y, 500)) do

		callSign = obj:getCallSign()

		if callSign == "ESS Odysseus" then
			dockable = true
		end
		
	end

	if dockable == true then
		odyfig18:destroy()
			
			odysseus:addCustomButton("Relay", "Launch ESSODY18", "Launch ESSODY18", launch_essody36)
	else
		odyfig18:addCustomMessage("Helms", "Distance too far. Docking cancelled.", "Distance too far. Docking cancelled.")
	end


end	



function launch_essody23()	

x, y = odysseus:getPosition()


	odyfig23 = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Fighter F967"):setPosition(x, y + 200)
	odyfig23:setCallSign("ESSODY23"):setAutoCoolant(true)
	
	odysseus:removeCustom("Launch ESSODY23")
	
	odyfig23:addCustomButton("Helms", "Dock to Odysseys", "Dock to Odysseys", dock_essody23)
end

function dock_essody23()

	x, y = odyfig23:getPosition()
	
	dockable = false
	
	for _, obj in ipairs(getObjectsInRadius(x, y, 500)) do

		callSign = obj:getCallSign()

		if callSign == "ESS Odysseus" then
			dockable = true
		end
		
	end

	if dockable == true then
		odyfig23:destroy()
			
			odysseus:addCustomButton("Relay", "Launch ESSODY23", "Launch ESSODY23", launch_essody23)
	else
		odyfig23:addCustomMessage("Helms", "Distance too far. Docking cancelled.", "Distance too far. Docking cancelled.")
	end

end	



function launch_essody36()

x, y = odysseus:getPosition()

	odyfig36 = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Fighter F967"):setPosition(x, y + 100)
	odyfig36:setCallSign("ESSODY36"):setAutoCoolant(true)
	
	odysseus:removeCustom("Launch ESSODY36")
	odyfig36:addCustomButton("Helms", "Dock to Odysseys", "Dock to Odysseys", dock_essody36)
	
end

function dock_essody36()

	x, y = odyfig36:getPosition()
	
	dockable = false
	
	for _, obj in ipairs(getObjectsInRadius(x, y, 500)) do

		callSign = obj:getCallSign()

		if callSign == "ESS Odysseus" then
			dockable = true
		end
		
	end

	if dockable == true then
		odyfig36:destroy()
			
			odysseus:addCustomButton("Relay", "Launch ESSODY36", "Launch ESSODY36", launch_essody36)
	else
			odyfig36:addCustomMessage("Helms", "Distance too far. Docking cancelled.", "Distance too far. Docking cancelled.")
	end

			
end	