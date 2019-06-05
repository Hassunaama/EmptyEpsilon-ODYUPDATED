-- Name: Jump 02
-- Type: Mission

function init()

       odysseus = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Corvette C743")
	odysseus:setCallSign("ESS Odysseus"):setPosition(0, 0):setCanBeDestroyed(false)
	
	-- Launched buttons
	odysseus:addCustomButton("Relay", "Launch ESSODY18", "Launch ESSODY18", launch_essody18)
	odysseus:addCustomButton("Relay", "Launch ESSODY23", "Launch ESSODY23", launch_essody23)
	odysseus:addCustomButton("Relay", "Launch ESSODY36", "Launch ESSODY36", launch_essody36)

	
	for asteroid_counter=1,50 do
		Asteroid():setPosition(random(-200000, 200000), random(-200000, 200000))
	end
	


    addGMFunction("Generate EOC Fleet", function()
	
	x, y = odysseus:getPosition()
	
-- EOC Starfleet		
	aurora = CpuShip():setFaction("EOC Starfleet"):setTemplate("Battlecruiser B952"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):setRotation(-75):setScannedByFaction("Corporate owned")
	
	flagship = aurora

	taurus = CpuShip():setFaction("EOC Starfleet"):setTemplate("Corvette C754"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -1500, 250):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	valkyrie = CpuShip():setFaction("EOC Starfleet"):setTemplate("Corvette C754"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -3000, 500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	aries = CpuShip():setFaction("EOC Starfleet"):setTemplate("Scoutship S342"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -4500, 750):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 

	inferno = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cruiser C753"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -6000, 1000):setScannedByFaction("Corporate owned")
		
	harbringer = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cruiser C753"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -9000, 7000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 

	envoy = CpuShip():setFaction("EOC Starfleet"):setTemplate("Corvette C754"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -250, 1500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	bluecoat = CpuShip():setFaction("EOC Starfleet"):setTemplate("Corvette C754"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -500, 3000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	
	burro = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cargoship T842"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -750, 4500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	arthas = CpuShip():setFaction("EOC Starfleet"):setTemplate("Scoutship S342"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -1000, 6000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 

	valor = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cruiser C753"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -4000, 9000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 

	warrior = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cruiser C753"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -1500, 8500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	

	halo = CpuShip():setFaction("EOC Starfleet"):setTemplate("Battlecruiser B952"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -7000, 9000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	

-- Civilians
	prophet = CpuShip():setFaction("Faith of the High Science"):setTemplate("Scoutship S835"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -1000, 1000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	
	karma = CpuShip():setFaction("Unregistered"):setTemplate("Scoutship S835"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -2000, 2000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	
	marauder = CpuShip():setFaction("Corporate owned"):setTemplate("Scoutship S835"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -3000, 3000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	
	discovery = CpuShip():setFaction("Government owned"):setTemplate("Corvette C348"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -4000, 4000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	
	whirlwind = CpuShip():setFaction("Corporate owned"):setTemplate("Corvette C348"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -5000, 5000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	
	memory = CpuShip():setFaction("Government owned"):setTemplate("Corvette C348"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -6000, 6000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 

	vulture = CpuShip():setFaction("Corporate owned"):setTemplate("Corvette C348"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -4000, 3000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	
	cyclone = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -3000, 4000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	
	ravenger = CpuShip():setFaction("Corporate owned"):setTemplate("Corvette C348"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -7000, 6000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	
	spectrum = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -6000, 7000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 

	
	centurio = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -7000, 4000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	
	polaris = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -4000, 7000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	
	
	immortal = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -5500, 3500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 
	
	starfall = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(20000, 40000), y + random(-40000, -20000)):orderFlyFormation(flagship, -3500, 5500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true) 

	removeGMFunction("Generate EOC Fleet")
	
	addGMFunction("Reveal Callsigns", function()
-- EOC Starfleet		
	aurora:setCallSign("ESS Aurora"):setScannedByFaction("EOC Starfleet", true)
	taurus:setCallSign("CSS Taurus") :setScannedByFaction("EOC Starfleet", true)
	valkyrie:setCallSign("ESS Valkyrie"):setScannedByFaction("EOC Starfleet", true)
	aries:setCallSign("ESS Aries"):setScannedByFaction("EOC Starfleet", true)
	inferno:setCallSign("ESS Inferno"):setScannedByFaction("EOC Starfleet", true)
	harbringer:setCallSign("ESS Harbinger"):setScannedByFaction("EOC Starfleet", true)
	envoy:setCallSign("ESS Envoy"):setScannedByFaction("EOC Starfleet", true)
	bluecoat:setCallSign("ESS Bluecoat"):setScannedByFaction("EOC Starfleet", true)
	burro:setCallSign("OSS Burro"):setScannedByFaction("EOC Starfleet", true)
	arthas:setCallSign("ESS Arthas"):setScannedByFaction("EOC Starfleet", true)
	valor:setCallSign("ESS Valor"):setScannedByFaction("EOC Starfleet", true)
	warrior:setCallSign("ESS Warrior"):setScannedByFaction("EOC Starfleet", true)
	halo:setCallSign("ESS Halo"):setScannedByFaction("EOC Starfleet", true)
	
-- Civilians
	prophet:setCallSign("CSS Prophet"):setScannedByFaction("EOC Starfleet", true)
	karma:setCallSign("OSS Karma"):setScannedByFaction("EOC Starfleet", true)
	marauder:setCallSign("OSS Marauder"):setScannedByFaction("EOC Starfleet", true)
	discovery:setCallSign("ESS Discovery"):setScannedByFaction("EOC Starfleet", true)
	whirlwind:setCallSign("CSS Whirlwind"):setScannedByFaction("EOC Starfleet", true)
	memory:setCallSign("ESS Memory"):setScannedByFaction("EOC Starfleet", true)
	vulture:setCallSign("OSS Vulture"):setScannedByFaction("EOC Starfleet", true)
	cyclone:setCallSign("CSS Cyclone"):setScannedByFaction("EOC Starfleet", true)
	ravenger:setCallSign("OSS Ravager"):setScannedByFaction("EOC Starfleet", true)
	spectrum:setTemplate("Cruiser C243"):setScannedByFaction("EOC Starfleet", true)
	centurio:setCallSign("CSS Centurio"):setScannedByFaction("EOC Starfleet", true)
	polaris:setCallSign("ESS Polaris"):setScannedByFaction("EOC Starfleet", true)
	immortal:setCallSign("OSS Immortal"):setScannedByFaction("EOC Starfleet", true)
	starfall:setCallSign("OSS Starfall"):setScannedByFaction("EOC Starfleet", true)
	removeGMFunction("Reveal Callsigns")

end)
	
	-- Esimerkki koodista miten tehdään nappi jolla tuhotaan yksi alus. Ei räjähdysefektejä tms tällä hetkellä.
	addGMFunction("Destroy Ravenger", function()
		ravenger:destroy()
	removeGMFunction("Destroy Ravenger")
	end)

addGMFunction("Fighter launchers", function()
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
	removeGMFunction("EOC Fighter launchers")
end)
	
	
	end)
		

    addGMFunction("Enemy Fleet", function()
	
	x, y = odysseus:getPosition()
	
	-- Fighters: 100
	-- Crusers: 40
		for n=1,2 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(-30000, -10000), y + random(-30000,-15000)):orderRoaming(x, y)
        end
			
			CpuShip():setFaction("Machines"):setTemplate("Machine Cruiser"):setPosition(x + random(-30000, -10000), y + random(-30000,-15000)):orderRoaming(x, y)
   
	
	removeGMFunction("Enemy Fleet")
	end)
	
 

end


function launch_essody18()
	odyfig18 = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Fighter F967")
	odyfig18:setCallSign("ESSODY18"):setAutoCoolant(true)
	
	odysseus:removeCustom("Launch ESSODY18")
	
	odyfig18:addCustomButton("Helms", "Dock ESSODY18", "Dock ESSODY18", dock_essody18)
end	

function dock_essody18()
	odyfig18:destroy()
		
	odysseus:removeCustom("Dock ESSODY18")
	
	odysseus:addCustomButton("Relay", "Launch ESSODY18", "Launch ESSODY18", launch_essody18)
end	



function launch_essody23()	
	odyfig23 = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Fighter F967")
	odyfig23:setCallSign("ESSODY23"):setAutoCoolant(true)
	
	odysseus:removeCustom("Launch ESSODY23")
	
	odyfig23:addCustomButton("Helms", "Dock ESSODY23", "Dock ESSODY23", dock_essody23)
end

function dock_essody23()
	odyfig23:destroy()
		
	odysseus:removeCustom("Dock ESSODY23")
	
	odysseus:addCustomButton("Relay", "Launch ESSODY23", "Launch ESSODY23", launch_essody23)
end	



function launch_essody36()
	odyfig36 = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Fighter F967")
	odyfig36:setCallSign("ESSODY36"):setAutoCoolant(true)
	
	odysseus:removeCustom("Launch ESSODY36")
	odyfig36:addCustomButton("Helms", "Dock ESSODY36", "Dock ESSODY36", dock_essody36)
	
end

function dock_essody36()
	odyfig36:destroy()
		
	odysseus:removeCustom("Dock ESSODY36")
	
	odysseus:addCustomButton("Relay", "Launch ESSODY36", "Launch ESSODY36", launch_essody36)
end	

