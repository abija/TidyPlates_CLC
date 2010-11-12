local config = {}
local texture = "Interface\\Addons\\TidyPlates_CLC\\Artwork\\"
local font = "Interface\\Addons\\TidyPlates_CLC\\Fonts\\"
local BarTexture = texture.."CP_Bartexture"

config.frame = {
	width = 100,
	height = 9,
	y = 0.5,
	x = 0,
}
config.hitbox = {
	width = 110,
	height = 8,
}
config.threatborder = {
	texture =						texture.."CLC_Threat",
	elitetexture =					texture.."CLC_Threat",
	width = 256,
	height = 64,
	x = 0,
	y = 0,
	anchor = "CENTER",
}
config.healthborder = {
	texture = 						texture.."CLC_HealthBarOverlay",
	glowtexture = 					texture.."CLC_HealthBarOverlay",
	elitetexture = 					texture.."CLC_HealthBarOverlay",
	width = 256,
	height = 64,
	x = 0,
	y = 0,
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
	width = 96,
	height = 5,
	x = 0,
	y = 0,
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
	size = 10,
	width = 100,
	height = 10,
	x = 1,
	y = 9
	,
	align = "LEFT",
	anchor = "CENTER",
	vertical = "CENTER",
	shadow = true,
}
config.specialText = {
	typeface =						font.."Accidental Presidency.ttf",
	size = 10,
	width = 30,
	height = 10,
	x = -4,
	y = 2,
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
	width = 32,
	height = 32,
	x = 0,
	y = 10,
	anchor = "TOP",
}
--[[OPTIONS]]--
config.threatcolor = {
	LOW = { r = 1, g = 1, b = 1, a = 0 },
	MEDIUM = { r = 1, g = 1, b = 0, a = 1 },
	HIGH = { r = 0, g = 0, b = 0, a = 1 },
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
	useOnUpdate = true,
}


config.SetSpecialText = function(unit)
	if (unit.health / unit.healthmax) < 1 then
		return ceil(100 * (unit.health / unit.healthmax))
	else
		return "100"
	end
end

---[[
	config.SetScale = function(unit)
	return 1.1
end
--]]

-- For new version
if not TidyPlatesThemeList then TidyPlatesThemeList = {} end
TidyPlatesThemeList["TidyPlaytes_CLC"] = config



--[[
local backdrop = {}
		backdrop.bgFile = "Interface\\AddOns\\ShadowedUnitFrames\\media\\textures\\minimalist"
		backdrop.insets	= { left = 0, right = 0, top = -1, bottom = 0 }
		bars.health:SetBackdrop(backdrop)
		bars.health:SetBackdropColor(0, 0, 0, 0.7)
		--]]

