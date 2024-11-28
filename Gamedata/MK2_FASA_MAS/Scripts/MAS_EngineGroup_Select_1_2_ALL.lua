-- MAS_GEM_PanelLights.lua
--
-- MOARdV's Avionics Systems
-- One-off Lua functions for MAS ASET props
--
-- Author: Kurgut
--
-- This script is public domain (although acknowledgement that Kurgut wrote it would be nice).

-- Function to store 1, 2 or 0 in a persistent variable (MAS_Engine_Group_Select), so that other props can use it to for EngineGroup functions. 
-- parameter 'mode': If 0 = All Engines  If 1 = EngineGroup 1, If 2 = EngineGroup 2.
-- This is intended to use only with MAS_swRotary_3pos or equivalent, where left switch position is engG 1, middle EngG 2, right is All.

function EngineGroupSelect(mode)

	if mode < 0 then

		fc.SetPersistent("MAS_Engine_Group_Select", 1)

	elseif mode > 0 then

		fc.SetPersistent("MAS_Engine_Group_Select", 0)

	else

		fc.SetPersistent("MAS_Engine_Group_Select", 2)

	end

	return 1
end