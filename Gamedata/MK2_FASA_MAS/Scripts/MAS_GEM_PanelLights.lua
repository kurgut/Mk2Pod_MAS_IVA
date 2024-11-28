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

function MASGEMPanelLightSelect(mode)

	if mode < 0 then

		fc.SetPersistent("PanelLights", 1)
		fc.SetPersistent("PanelLights_Red", 0)

	elseif mode > 0 then

		fc.SetPersistent("PanelLights", 0)
		fc.SetPersistent("PanelLights_Red", 1)

	else

		fc.SetPersistent("PanelLights", 0)
		fc.SetPersistent("PanelLights_Red", 0)

	end

	return 1
end