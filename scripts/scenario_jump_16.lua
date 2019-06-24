-- Name: Jump 16
-- Type: Mission
-- Description: Onload: Odysseus, random asteroids. EOC fleet.

require("utils.lua")
require("utils_odysseus.lua")

function init()

	destroyEnemy = false
	destroy_delay = 1
	radius = 100
	enemyCount = 0
	enemyKills = 0

    odysseus = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Corvette C743")
	odysseus:setCallSign("ESS Odysseus"):setPosition(0, 0):setCanBeDestroyed(false)


	for asteroid_counter=1,50 do
		Asteroid():setPosition(random(-75000, 75000), random(-75000, 75000))
	end

	x, y = odysseus:getPosition()

	host = Asteroid():setPosition(140000, -80000)


-- EOC Starfleet
	aurora = CpuShip():setFaction("EOC Starfleet"):setTemplate("Battlecruiser B952"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):setRotation(-75):setScannedByFaction("Corporate owned"):setCallSign("ESS Aurora"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	flagship = aurora

	taurus = CpuShip():setFaction("EOC Starfleet"):setTemplate("Corvette C754"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -1500, 250):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("CSS Taurus") :setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	aries = CpuShip():setFaction("EOC Starfleet"):setTemplate("Scoutship S342"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -4500, 750):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Aries"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	inferno = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cruiser C753"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -6000, 1000):setScannedByFaction("Corporate owned"):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Inferno"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	harbringer = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cruiser C753"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -9000, 7000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Harbinger"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	envoy = CpuShip():setFaction("EOC Starfleet"):setTemplate("Corvette C754"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -250, 1500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Envoy"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	bluecoat = CpuShip():setFaction("EOC Starfleet"):setTemplate("Corvette C754"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -500, 3000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Bluecoat"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	burro = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cargoship T842"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -750, 4500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("OSS Burro"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	arthas = CpuShip():setFaction("EOC Starfleet"):setTemplate("Scoutship S342"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -1000, 6000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Arthas"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	valor = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cruiser C753"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -4000, 9000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Valor"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	warrior = CpuShip():setFaction("EOC Starfleet"):setTemplate("Cruiser C753"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -1500, 8500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Warrior"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)


	halo = CpuShip():setFaction("EOC Starfleet"):setTemplate("Battlecruiser B952"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -7000, 9000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Halo"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

-- Civilians

	karma = CpuShip():setFaction("Unregistered"):setTemplate("Scoutship S835"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -2000, 2000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("OSS Karma"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	marauder = CpuShip():setFaction("Corporate owned"):setTemplate("Scoutship S835"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -3000, 3000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("OSS Marauder"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	discovery = CpuShip():setFaction("Government owned"):setTemplate("Corvette C348"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -4000, 4000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Discovery"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	whirlwind = CpuShip():setFaction("Corporate owned"):setTemplate("Corvette C348"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -5000, 5000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("CSS Whirlwind"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	memory = CpuShip():setFaction("Government owned"):setTemplate("Corvette C348"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -6000, 6000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Memory"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	cyclone = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -3000, 4000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("CSS Cyclone"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	ravenger = CpuShip():setFaction("Corporate owned"):setTemplate("Corvette C348"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -7000, 6000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("OSS Ravager"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	spectrum = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -6000, 7000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("ESS Spectrum"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	centurion = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -7000, 4000):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("CSS Centurion"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	immortal = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -5500, 3500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("OSS Immortal"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	starfall = CpuShip():setFaction("Corporate owned"):setTemplate("Cruiser C243"):setPosition(x + random(-20000, 20000), y + random(-20000, 20000)):orderFlyFormation(flagship, -3500, 5500):setScannedByFaction("Corporate owned", true):setScannedByFaction("Faith of the High Science", true):setScannedByFaction("Government owned", true):setScannedByFaction("Unregistered", true):setCallSign("OSS Starfall"):setScannedByFaction("EOC Starfleet", true):setCanBeDestroyed(false)

	addGMFunction("Fighter launchers", fighter_launchers)

	addGMFunction("Allow ESSODY18", allow_essody18_prep)
  addGMFunction("Allow ESSODY23", allow_essody23_prep)
  addGMFunction("Allow ESSODY36", allow_essody36_prep)

  addGMFunction("Allow Starcaller", allow_starcaller_prep)


    addGMFunction("Enemy wave one + Nest", wave_one)




end


function wave_one()

		x, y = odysseus:getPosition()

		odysseus:addToShipLog("EVA long range scanning results. Jump to sector detected.", "Blue")

		CpuShip():setFaction("Machines"):setTemplate("Machine Unknown"):setPosition(80000, 0):orderRoaming(x, y)

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,10 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Cruiser"):setPosition(x + random(70000, 90000), y + random(-65000,65000)):orderRoaming(x, y)
        end


	removeGMFunction("Enemy wave one + Nest")
	    addGMFunction("Enemy wave two", wave_two)

	end

function wave_two()

	odysseus:addToShipLog("EVA long range scanning results. Jump to sector detected.", "Blue")

	x, y = odysseus:getPosition()

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end
		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end
		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Cruiser"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Cruiser"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Cruiser"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

	removeGMFunction("Enemy wave two")
		addGMFunction("Enemy wave three", wave_three)

	end

function wave_three()

	odysseus:addToShipLog("EVA long range scanning results. Jump to sector detected.", "Blue")

		x, y = odysseus:getPosition()

	-- Fighters 100
	-- Cruisers 35
		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end
		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,10 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Cruiser"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,10 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Cruiser"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,15 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Cruiser"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end


		removeGMFunction("Enemy wave three")
	    addGMFunction("Enemy wave four", wave_four)
	end

function wave_four()

	odysseus:addToShipLog("EVA long range scanning results. Jump to sector detected.", "Blue")

	x, y = odysseus:getPosition()

	-- Fighters 100
	-- Cruisers 35
		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end
		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,10 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Cruiser"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,10 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Cruiser"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,15 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Cruiser"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

				for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end
		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Fighter"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Cruiser"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end

		for n=1,20 do
			CpuShip():setFaction("Machines"):setTemplate("Machine Cruiser"):setPosition(x + random(70000, 120000), y + random(-65000,65000)):orderRoaming(x, y)
        end


		removeGMFunction("Enemy wave four")
		addGMFunction("Launch destruction", cleanup_confirm)
	end


	function cleanup_confirm()
		addGMFunction("Cancel destruction", cleanup_cancel)
		addGMFunction("Confirm destruction", cleanup_prep)
		removeGMFunction("Launch destruction")
	end


	function cleanup_cancel()
		addGMFunction("Launch destruction", cleanup_confirm)
		removeGMFunction("Cancel destruction")
		removeGMFunction("Confirm destruction")

	end

	function cleanup_prep()
		removeGMFunction("Cancel destruction")
		removeGMFunction("Confirm destruction")

		for _, obj in ipairs(getAllObjects()) do

			faction = obj:getFaction()

			if faction == "Machines" then
				enemyCount = enemyCount + 1
			end
		end

		enemyCount = enemyCount * 97 / 100

		destroyEnemy = true

	end



	function cleanup(delta)

		x, y = host:getPosition()

		if destroy_delay <= 1 then
			for _, obj in ipairs(getObjectsInRadius(x, y, radius)) do

				faction = obj:getFaction()

				if faction == "Machines" then
					obj:destroy()
					enemyKills = enemyKills + 1
				end

				if enemyKills >= enemyCount then
					destroy = false
					return
				end

			end


			radius = radius + 100
			destroy_delay = 1
		else

			destroy_delay = destroy_delay - delta

		end

		if enemyKills >= enemyCount then
			destroy = false
		end
	end


	function fighter_launchers()
		addGMFunction("Aurora Fighters", function()

		 x, y = aurora:getPosition()

			for n=1,69 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):orderDefendLocation(x, y):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Aurora Fighters")
		end)

		addGMFunction("Halo Fighters", function()

		x, y = halo:getPosition()

			for n=1,51 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):orderDefendLocation(x, y):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Halo Fighters")
		end)

		addGMFunction("Taurus Fighters", function()

		x, y = taurus:getPosition()

			for n=1,10 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):orderDefendLocation(x, y):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Taurus Fighters")
		end)

		addGMFunction("Envoy Fighters", function()

		x, y = envoy:getPosition()

			for n=1,4 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):orderDefendLocation(x, y):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Envoy Fighters")
		end)

		addGMFunction("Harbringer Fighters", function()

		x, y = harbringer:getPosition()

			for n=1,16 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):orderDefendLocation(x, y):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Harbringer Fighters")
		end)

		addGMFunction("Inferno Fighters", function()

		x, y = inferno:getPosition()

			for n=1,27 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):orderDefendLocation(x, y):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Inferno Fighters")
		end)

		addGMFunction("Valor Fighters", function()

		x, y = valor:getPosition()

			for n=1,20 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):orderDefendLocation(x, y):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Valor Fighters")
		end)

		addGMFunction("Warrior Fighters", function()

		x, y = warrior:getPosition()

			for n=1,18 do
				CpuShip():setFaction("EOC Starfleet"):setTemplate("Fighter F975"):orderDefendLocation(x, y):setPosition(x + random(-1000, 1000), y + random(-1000, 1000))
			end
		removeGMFunction("Warrior Fighters")
		end)

		addGMFunction("Hide Fighter launchers", function()
			removeGMFunction("Aurora Fighters")
			removeGMFunction("Halo Fighters")
			removeGMFunction("Taurus Fighters")
			removeGMFunction("Envoy Fighters")
			removeGMFunction("Harbringer Fighters")
			removeGMFunction("Inferno Fighters")
			removeGMFunction("Valor Fighters")
			removeGMFunction("Warrior Fighters")
			removeGMFunction("Hide Fighter launchers")
			addGMFunction("Fighter launchers", fighter_launchers)
		end)


	removeGMFunction("Fighter launchers")
	end


	-- FIGHTER AND STARCALLER LAUNCHING
	function allow_starcaller_prep()
		addGMFunction("Cancel Starcaller", allow_starcaller_cancel)
		addGMFunction("Confirm Starcaller", allow_starcaller_confirm)
		removeGMFunction("Allow Starcaller")
	end

	function allow_starcaller_cancel()
		removeGMFunction("Cancel Starcaller")
		removeGMFunction("Confirm Starcaller")
		addGMFunction("Allow Starcaller", allow_starcaller_prep)
	end

	function allow_starcaller_confirm()
		removeGMFunction("Cancel Starcaller")
		removeGMFunction("Confirm Starcaller")
		odysseus:addCustomButton("Relay", "Launch Starcaller", "Launch Starcaller", launch_starcaller_prep)
	end

	function allow_essody18_prep()
		addGMFunction("Cancel ESSODY18", allow_essody18_cancel)
		addGMFunction("Confirm ESSODY18", allow_essody18_confirm)
		removeGMFunction("Allow ESSODY18")
	end


	function allow_essody18_cancel()
		removeGMFunction("Cancel ESSODY18")
		removeGMFunction("Confirm ESSODY18")
		addGMFunction("Allow ESSODY18", allow_essody18)
	end

	function allow_essody18_confirm()
		removeGMFunction("Cancel ESSODY18")
		removeGMFunction("Confirm ESSODY18")
		odysseus:addCustomButton("Relay", "Launch ESSODY18", "Launch ESSODY18", launch_essody18_prep)
	end

	function allow_essody18()
		odysseus:addCustomButton("Relay", "Launch ESSODY18", "Launch ESSODY18", launch_essody18_prep)
		removeGMFunction("Allow ESSODY18")
	end

	function launch_essody18_prep()
		odysseus:removeCustom("Launch ESSODY18")
		odysseus:addCustomButton("Relay", "Cancel ESSODY18 launch", "Cancel ESSODY18 launch", launch_essody18_cancel)
		odysseus:addCustomButton("Relay", "Confirm ESSODY18 launch", "Confirm ESSODY18 launch", launch_essody18_confirm)
	end

	function launch_essody18_cancel()
		odysseus:addCustomButton("Relay", "Launch ESSODY18", "Launch ESSODY18", launch_essody18_prep)
		odysseus:removeCustom("Cancel ESSODY18 launch")
		odysseus:removeCustom("Confirm ESSODY18 launch")
	end

	function launch_essody18_confirm()
		odysseus:removeCustom("Cancel ESSODY18 launch")
		odysseus:removeCustom("Confirm ESSODY18 launch")
		launch_essody18()
	end


	function allow_essody23_prep()
		addGMFunction("Cancel ESSODY23", allow_essody23_cancel)
		addGMFunction("Confirm ESSODY23", allow_essody23_confirm)
		removeGMFunction("Allow ESSODY23")
	end


	function allow_essody23_cancel()
		removeGMFunction("Cancel ESSODY23")
		removeGMFunction("Confirm ESSODY23")
		addGMFunction("Allow ESSODY23", allow_essody23)
	end

	function allow_essody23_confirm()
		removeGMFunction("Cancel ESSODY23")
		removeGMFunction("Confirm ESSODY23")
		odysseus:addCustomButton("Relay", "Launch ESSODY23", "Launch ESSODY23", launch_essody23_prep)
	end

	function allow_essody23()
		odysseus:addCustomButton("Relay", "Launch ESSODY23", "Launch ESSODY23", launch_essody23_prep)
		removeGMFunction("Allow ESSODY23")
	end

	function launch_essody23_prep()
		odysseus:removeCustom("Launch ESSODY23")
		odysseus:addCustomButton("Relay", "Cancel ESSODY23 launch", "Cancel ESSODY23 launch", launch_essody23_cancel)
		odysseus:addCustomButton("Relay", "Confirm ESSODY23 launch", "Confirm ESSODY23 launch", launch_essody23_confirm)
	end

	function launch_essody23_cancel()
		odysseus:addCustomButton("Relay", "Launch ESSODY23", "Launch ESSODY23", launch_essody23_prep)
		odysseus:removeCustom("Cancel ESSODY23 launch")
		odysseus:removeCustom("Confirm ESSODY23 launch")
	end

	function launch_essody23_confirm()
		odysseus:removeCustom("Cancel ESSODY23 launch")
		odysseus:removeCustom("Confirm ESSODY23 launch")
		launch_essody23()
	end

	function allow_essody36_prep()
		addGMFunction("Cancel ESSODY36", allow_essody36_cancel)
		addGMFunction("Confirm ESSODY36", allow_essody36_confirm)
		removeGMFunction("Allow ESSODY36")
	end


	function allow_essody36_cancel()
		removeGMFunction("Cancel ESSODY36")
		removeGMFunction("Confirm ESSODY36")
		addGMFunction("Allow ESSODY36", allow_essody36)
	end

	function allow_essody36_confirm()
		removeGMFunction("Cancel ESSODY36")
		removeGMFunction("Confirm ESSODY36")
		odysseus:addCustomButton("Relay", "Launch ESSODY36", "Launch ESSODY36", launch_essody36_prep)
	end

	function allow_essody36()
		odysseus:addCustomButton("Relay", "Launch ESSODY36", "Launch ESSODY36", launch_essody36_prep)
		removeGMFunction("Allow ESSODY36")
	end

	function launch_essody36_prep()
		odysseus:removeCustom("Launch ESSODY36")
		odysseus:addCustomButton("Relay", "Cancel ESSODY36 launch", "Cancel ESSODY36 launch", launch_essody36_cancel)
		odysseus:addCustomButton("Relay", "Confirm ESSODY36 launch", "Confirm ESSODY36 launch", launch_essody36_confirm)
	end

	function launch_essody36_cancel()
		odysseus:addCustomButton("Relay", "Launch ESSODY36", "Launch ESSODY36", launch_essody36_prep)
		odysseus:removeCustom("Cancel ESSODY36 launch")
		odysseus:removeCustom("Confirm ESSODY36 launch")
	end

	function launch_essody36_confirm()
		odysseus:removeCustom("Cancel ESSODY36 launch")
		odysseus:removeCustom("Confirm ESSODY36 launch")
		launch_essody36()
	end


	function allow_starcaller_prep()
		addGMFunction("Cancel Starcaller", allow_starcaller_cancel)
		addGMFunction("Confirm Starcaller", allow_starcaller_confirm)
		removeGMFunction("Allow Starcaller")
	end


	function allow_starcaller_cancel()
		removeGMFunction("Cancel Starcaller")
		removeGMFunction("Confirm Starcaller")
		addGMFunction("Allow Starcaller", allow_starcaller_prep)
	end

	function allow_starcaller_confirm()
		removeGMFunction("Cancel Starcaller")
		removeGMFunction("Confirm Starcaller")
		odysseus:addCustomButton("Relay", "Launch Starcaller", "Launch Starcaller", launch_starcaller_prep)
	end

	function allow_starcaller()
		odysseus:addCustomButton("Relay", "Launch Starcaller", "Launch Starcaller", launch_starcaller_prep)
		removeGMFunction("Allow Starcaller")
	end

	function launch_starcaller_prep()
		odysseus:removeCustom("Launch Starcaller")
		odysseus:addCustomButton("Relay", "Cancel Starcaller launch", "Cancel Starcaller launch", launch_starcaller_cancel)
		odysseus:addCustomButton("Relay", "Confirm Starcaller launch", "Confirm Starcaller launch", launch_starcaller_confirm)
	end

	function launch_starcaller_cancel()
		odysseus:addCustomButton("Relay", "Launch Starcaller", "Launch Starcaller", launch_starcaller_prep)
		odysseus:removeCustom("Cancel Starcaller launch")
		odysseus:removeCustom("Confirm Starcaller launch")
	end

	function launch_starcaller_confirm()
		odysseus:removeCustom("Cancel Starcaller launch")
		odysseus:removeCustom("Confirm Starcaller launch")
		launch_starcaller()
	end


	-- Player launched functions for fighters and starcaller
		function launch_starcaller()

	x, y = odysseus:getPosition()

			starcaller = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Scoutship S392"):setPosition(x - 400, y + 400):setCallSign("ESS Starcaller"):setAutoCoolant(true)

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
				odysseus:addCustomButton("Relay", "Launch Starcaller", "Launch Starcaller", launch_starcaller_prep)
			else
				starcaller:addCustomMessage("Helms", "Distance too far. Docking canceled.", "Distance too far. Docking canceled.")
			end
		end


		function launch_essody18()

		x, y = odysseus:getPosition()

			essody18 = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Fighter F967"):setPosition(x, y + 300)
			essody18:setCallSign("ESSODY18"):setAutoCoolant(true)

			odysseus:removeCustom("Launch ESSODY18")

			essody18:addCustomButton("Helms", "Dock to Odysseys", "Dock to Odysseys", dock_essody18)

		end

		function dock_essody18()

			x, y = essody18:getPosition()

			dockable = false

			for _, obj in ipairs(getObjectsInRadius(x, y, 500)) do

				callSign = obj:getCallSign()

				if callSign == "ESS Odysseus" then
					dockable = true
				end

			end

			if dockable == true then
				essody18:destroy()

					odysseus:addCustomButton("Relay", "Launch ESSODY18", "Launch ESSODY18", launch_essody36)
			else
				essody18:addCustomMessage("Helms", "Distance too far. Docking canceled.", "Distance too far. Docking canceled.")
			end

		end



		function launch_essody23()

		x, y = odysseus:getPosition()

			essody23 = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Fighter F967"):setPosition(x, y + 200)
			essody23:setCallSign("ESSODY23"):setAutoCoolant(true)

			odysseus:removeCustom("Launch ESSODY23")

			essody23:addCustomButton("Helms", "Dock to Odysseys", "Dock to Odysseys", dock_essody23)
		end

		function dock_essody23()

			x, y = essody23:getPosition()

			dockable = false

			for _, obj in ipairs(getObjectsInRadius(x, y, 500)) do

				callSign = obj:getCallSign()

				if callSign == "ESS Odysseus" then
					dockable = true
				end

			end

			if dockable == true then
				essody23:destroy()

					odysseus:addCustomButton("Relay", "Launch ESSODY23", "Launch ESSODY23", launch_essody23)
			else
				essody23:addCustomMessage("Helms", "Distance too far. Docking canceled.", "Distance too far. Docking canceled.")
			end

		end



		function launch_essody36()

		x, y = odysseus:getPosition()

			essody36 = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Fighter F967"):setPosition(x, y + 100)
			essody36:setCallSign("ESSODY36"):setAutoCoolant(true)

			odysseus:removeCustom("Launch ESSODY36")
			essody36:addCustomButton("Helms", "Dock to Odysseys", "Dock to Odysseys", dock_essody36)

		end

		function dock_essody36()

			x, y = essody36:getPosition()

			dockable = false

			for _, obj in ipairs(getObjectsInRadius(x, y, 500)) do

				callSign = obj:getCallSign()

				if callSign == "ESS Odysseus" then
					dockable = true
				end

			end

			if dockable == true then
				essody36:destroy()

					ship:addCustomButton("Relay", "Launch ESSODY36", "Launch ESSODY36", launch_essody36)
			else
					essody36:addCustomMessage("Helms", "Distance too far. Docking canceled.", "Distance too far. Docking canceled.")
			end


		end


function update(delta)

	if delta == 0 then

		return

		--game paused
	end

	if destroyEnemy then
		cleanup(delta)
	end

end
