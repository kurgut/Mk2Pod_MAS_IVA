-- MAS_GEM_PanelLights.lua
--
-- MOARdV's Avionics Systems
-- One-off Lua functions for MAS ASET props
--
-- Author: Kurgut
--
-- This script is public domain (although acknowledgement that Kurgut wrote it would be nice).

-- Function to lighting on the MAS FASA Gemini panels from a single prop.
-- parameter 'mode': If 0 = light warm white  If 1 = OFF, If 2 = Red.

function ENGROTDELTAModeSelect(mode)

	if mode < 0 then

		fc.SetPersistent("MAS_Engine_Rotation_DELTA", 1)

	elseif mode > 0 then

		fc.SetPersistent("MAS_Engine_Rotation_DELTA", 10)

	else

		fc.SetPersistent("MAS_Engine_Rotation_DELTA", 5)

	end

	return 1
end