require("Prototypes.recipes")
require("Prototypes.sciences")

-- Add New Science Packs to Existing Technology

-- Ballistics Science MK1
table.insert(data.raw["technology"]["military"].unit.ingredients, {"ballistics-science-pack-mk1", 1})
table.insert(data.raw["technology"]["gun-turret"].unit.ingredients, {"ballistics-science-pack-mk1", 1})

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
    "ballistics-science-pack-mk1"
  }


data.raw["lab"]["lab"].inputs = NewSciencePacks