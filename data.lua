--[[
  require("Prototypes.Recipes.rec-ballistics")
require("Prototypes.Items.item-ballistics")
require("Prototypes.Technology.tech-ballistics")
require("Prototypes.Recipes.rec-combustion")
require("Prototypes.Items.item-combustion")
require("Prototypes.Technology.tech-combustion")
]]--

Files = {"ballistics", "combustion"}
FilesLength = #Files
Number = 0
NumberSub = 0
while Number ~= FilesLength do
  Number = Number + 1
  NumberSub = 0
    repeat
        NumberSub = NumberSub + 1
        if NumberSub == 1 then
          Expression = "Prototypes.Recipes.rec" .. Files[Number]
          require(Expression)
        elseif NumberSub == 2 then
          Expression = "Prototypes.Items.item" .. Files[Number]
          require(Expression)
        elseif NumberSub == 3 then
          Expression = "Prototypes.Technology.tech" .. Files[Number]
          require(Expression)
        end
    until NumberSub == 3
end

-- Add New Science Packs to Existing Technology

-- Research and MultiResearch Function (To save line space, and Time)

local function MultiResearch(InternalName,  SciencePack, StartingValue)
  if StartingValue ~= nil then
    StartingValue = StartingValue-1
  end
  StartingValue = StartingValue or 0
  Repeat = true
  TimesDone = StartingValue
  while Repeat do
    TimesDone = TimesDone+1
    
    if data.raw["technology"][InternalName] and TimesDone == 1 then
      log(InternalName .. " " .. TimesDone .. " " .. " ".. SciencePack)
      table.insert(data.raw["technology"][InternalName].unit.ingredients, {SciencePack, 1})
    else
      log(InternalName .. "-" .. TimesDone .. " " .. TimesDone .. " " .. " ".. SciencePack)
      if not data.raw["technology"][InternalName .. "-" .. TimesDone] then 
        Repeat = false
      else
        table.insert(data.raw["technology"][InternalName .. "-" .. TimesDone].unit.ingredients, {SciencePack, 1})
      end
    end
  end
end

local function Research(InternalName, SciecePack, Multiplyer)
  Multiplyer = Multiplyer or 1
  table.insert(data.raw["technology"][InternalName].unit.ingredients, {SciecePack, Multiplyer})
end

-- Ballistics Science MK1
Research("flamethrower", "ballistics-science-pack-mk1")
MultiResearch("military", "ballistics-science-pack-mk1")
Research("gun-turret", "ballistics-science-pack-mk1")
MultiResearch("refined-flammables","ballistics-science-pack-mk1")
MultiResearch("stronger-explosives", "ballistics-science-pack-mk1")
MultiResearch("weapon-shooting-speed", "ballistics-science-pack-mk1")
MultiResearch("laser-shooting-speed", "ballistics-science-pack-mk1")
MultiResearch("energy-weapons-damage", "ballistics-science-pack-mk1")
MultiResearch("physical-projectile-damage", "ballistics-science-pack-mk1")

-- Ballistics Science MK2
Research("flamethrower", "ballistics-science-pack-mk2")
MultiResearch("military", "ballistics-science-pack-mk2", 2)
MultiResearch("refined-flammables","ballistics-science-pack-mk2", 2)
MultiResearch("stronger-explosives", "ballistics-science-pack-mk2", 2)
MultiResearch("weapon-shooting-speed", "ballistics-science-pack-mk2", 2)
MultiResearch("laser-shooting-speed", "ballistics-science-pack-mk2", 2)
MultiResearch("energy-weapons-damage", "ballistics-science-pack-mk2")
MultiResearch("physical-projectile-damage", "ballistics-science-pack-mk2", 2)


--MultiResearch("military", )

-- Add new Science Pakcs to Labs

local NewSciencePacks = {
    "automation-science-pack",
    "logistic-science-pack",
    "military-science-pack",
    "chemical-science-pack",
    "production-science-pack",
    "utility-science-pack",
    "space-science-pack",
    -- New Science Packs
    "ballistics-science-pack-mk1",
    "ballistics-science-pack-mk2"
  }


data.raw["lab"]["lab"].inputs = NewSciencePacks