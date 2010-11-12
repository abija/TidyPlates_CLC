local config = {}
local texture = "Interface\\Addons\\TidyPlates_CLC\\Artwork\\"
local font = "Interface\\Addons\\TidyPlates_CLC\\Fonts\\"
local BarTexture = texture.."CP_Bartexture"

--[[CP - Tidy Plates Theme]]--
--[[Textures]]--

config.frame = {
	width = 124,
	height = 30,
}
config.threatborder = {
	texture =						texture.."CP_Threat",
	elitetexture =					texture.."CP_Threat",
	width = 256,
	height = 64,
	x = 0,
	y = 5,
	anchor = "CENTER",
}
config.healthborder = {
	texture = 						texture.."CP_HealthBarOverlay",
	glowtexture = 					texture.."CP_HealthBarHighlight",
	elitetexture = 					texture.."CP_HealthBarEliteOverlay",
	width = 256,
	height = 64,
	x = 0,
	y = 5,
	anchor = "CENTER",
}
config.castborder = {
	texture = 						texture.."CP_CastBarOverlay",
	width = 256,
	height = 64,
	x = 0,
	y = -10,
	anchor = "CENTER",
}

config.castnostop = {
	texture =						texture.."CP_CastBarLock",
	width = 256,
	height = 64,
	x = 0,
	y = -10,
	anchor = "CENTER",
}
--[[Bar Textures]]--
config.healthbar = {
	texture =						BarTexture,
	width = 120,
	height = 10,
	x = 0,
	y = 5,
	anchor = "CENTER",
	orientation = "HORIZONTAL",
}
config.castbar = {
	texture =						BarTexture,
	width = 120,
	height = 10,
	x = 0,
	y = -10,
	anchor = "CENTER",
	orientation = "HORIZONTAL",
}
--[[TEXT]]--

config.name = {
	typeface =						font.."Accidental Presidency.ttf",
	size = 14,
	width = 120,
	height = 14,
	x = 0,
	y = 18,
	align = "LEFT",
	anchor = "CENTER",
	vertical = "CENTER",
	shadow = true,
}
config.specialText = {
	typeface =						font.."Accidental Presidency.ttf",
	size = 12,
	width = 30,
	height = 14,
	x = -5,
	y = 6,
	align = "RIGHT",
	anchor = "RIGHT",
	vertical = "CENTER",
	shadow = true,
}
--[[ICONS]]--
config.dangerskull = {
	width = 14,
	height = 14,
	x = -7,
	y = 0,
	anchor = "LEFT",
}
config.specialArt = {
	width = 22,
	height = 22,
	x = -74,
	y = -2,
	anchor = "CENTER",
}
config.spellicon = {
	width = 20,
	height = 20,
	x = 75,
	y = -2,
	anchor = "CENTER",
}
config.raidicon = {
	width = 56,
	height = 56,
	x = 0,
	y = 17,
	anchor = "TOP",
}
--[[OPTIONS]]--
config.threatcolor = {
	LOW = { r = 1, g = 1, b = 1, a = 1 },
	MEDIUM = { r = 1, g = 1, b = 0, a = 1 },
	HIGH = { r = 1, g = 0, b = 0, a = 1 },
}
config.options = {
	showLevel = false,
	showName = true,
	showSpecialArt = true,
	showSpecialText = true,
	showSpecialText2 = false,
	showSpecialText3 = true,
	showDangerSkull = true,
	showspellIcon = true,
	showNostopSpell = true,
}

config.SetSpecialText = function(unit)
	if (unit.health / unit.healthmax) < 1 then
		return ceil(100 * (unit.health / unit.healthmax))
	else
		return "100"
	end
end

config.SetScale = function(unit)
	return 0.7
end

-- For new version
if not TidyPlatesThemeList then TidyPlatesThemeList = {} end
TidyPlatesThemeList["TidyPlaytes_CLC"] = config





