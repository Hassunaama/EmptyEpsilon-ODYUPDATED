-- Name: Fighter practice - 2 fighters
-- Description: Fighter practice - Two EOC vs. Predator
-- Type: Basic
-- Variation[2-2-0-0]: Two EOC against two machine Predators
-- Variation[2-3-0-0]: Two EOC against three machine Predators
-- Variation[2-5-0-0]: Two EOC against five machine Predators
-- Variation[2-0-1-0]: Two EOC against one machine Stinger
-- Variation[2-0-0-1]: Two EOC against one machine Reaper
-- Variation[2-1-1-0]: Two EOC against one machine Predator and one machine Stinger
-- Variation[2-1-0-1]: Two EOC against one machine Predator and one machine Reaper


function init()


	simulation01 = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Fighter F967"):setPosition(0, 0)
	simulation01:setCallSign("Sim01"):setAutoCoolant(true)

	simulation02 = PlayerSpaceship():setFaction("EOC Starfleet"):setTemplate("Fighter F967"):setPosition(0, 500)
	simulation02:setCallSign("Sim02"):setAutoCoolant(true)

	CpuShip():setFaction("Machines"):setTemplate("Fighter Predator"):setCallSign("FGT1"):setPosition(20000, 0):orderRoaming()

	if getScenarioVariation() == "2-2-0-0" then
		CpuShip():setFaction("Machines"):setTemplate("Fighter Predator"):setCallSign("FGT1"):setPosition(20000, 0):orderRoaming()
		CpuShip():setFaction("Machines"):setTemplate("Fighter Predator"):setCallSign("FGT2"):setPosition(20000, -2500):orderRoaming()
	end

	if getScenarioVariation() == "2-3-0-0" then
		CpuShip():setFaction("Machines"):setTemplate("Fighter Predator"):setCallSign("FGT1"):setPosition(22000, 0):orderRoaming()
		CpuShip():setFaction("Machines"):setTemplate("Fighter Predator"):setCallSign("FGT2"):setPosition(20000, -2500):orderRoaming()
		CpuShip():setFaction("Machines"):setTemplate("Fighter Predator"):setCallSign("FGT3"):setPosition(22000, 2500):orderRoaming()
	end

	if getScenarioVariation() == "2-5-0-0" then
		CpuShip():setFaction("Machines"):setTemplate("Fighter Predator"):setCallSign("FGT1"):setPosition(26000, 0):orderRoaming()
		CpuShip():setFaction("Machines"):setTemplate("Fighter Predator"):setCallSign("FGT2"):setPosition(23000, -2500):orderRoaming()
		CpuShip():setFaction("Machines"):setTemplate("Fighter Predator"):setCallSign("FGT3"):setPosition(20000, 2500):orderRoaming()
		CpuShip():setFaction("Machines"):setTemplate("Fighter Predator"):setCallSign("FGT4"):setPosition(23000, -5000):orderRoaming()
		CpuShip():setFaction("Machines"):setTemplate("Fighter Predator"):setCallSign("FGT5"):setPosition(26000, 5000):orderRoaming()
	end

	if getScenarioVariation() == "2-0-1-0" then
		CpuShip():setFaction("Machines"):setTemplate("Frigate Stinger"):setCallSign("FRI1"):setPosition(20000, 0):orderRoaming()
	end

	if getScenarioVariation() == "2-0-0-1" then
		CpuShip():setFaction("Machines"):setTemplate("Cruiser Reaper"):setCallSign("CRU1"):setPosition(20000, 0):orderRoaming()
	end

	if getScenarioVariation() == "2-1-1-0" then
		CpuShip():setFaction("Machines"):setTemplate("Fighter Predator"):setCallSign("FGT1"):setPosition(20000, 0):orderRoaming()
		CpuShip():setFaction("Machines"):setTemplate("Frigate Stinger"):setCallSign("FRI1"):setPosition(20000, -2500):orderRoaming()
	end

	if getScenarioVariation() == "2-1-0-1" then
		CpuShip():setFaction("Machines"):setTemplate("Fighter Predator"):setCallSign("FGT1"):setPosition(20000, 0):orderRoaming()
		CpuShip():setFaction("Machines"):setTemplate("Cruiser Reaper"):setCallSign("CRU1"):setPosition(20000, -2500):orderRoaming()
	end

end



function update(delta)


end
