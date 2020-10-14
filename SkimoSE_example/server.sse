-- LeoSight.cz (c) 2020 / SkimoSE 1.4
-- # Název modulu
-- Autor: Rataj

-- KONTROLA JÁDRA
if getResourceFromName("SkimoSE_core") and getResourceState(getResourceFromName("SkimoSE_core"))=="running" then
	local sseRunning, coreHash = exports['SkimoSE_core']:isRunning()
	if sseRunning then
		outputDebugString("[SkimoSE] "..getResourceName(getThisResource()).." úspěšně spuštěno!")
	else
		outputDebugString("[SkimoSE] "..getResourceName(getThisResource()).." se nepodařilo propojit s jádrem!")
		stopResource(getThisResource())
	end
else
	outputDebugString("[SkimoSE] "..getResourceName(getThisResource()).." se nepodařilo propojit s jádrem!")
	stopResource(getThisResource())
end
-- KONEC KONTROLY JÁDRA
